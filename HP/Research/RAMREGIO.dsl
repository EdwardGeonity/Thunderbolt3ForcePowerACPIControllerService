// The goal of this SSDT is to find free writable space in ram and create operational region for tbt tree devices
// This will allow to use content of TNVS with external ssdts and reserve addreses in variables of TNVS
// NHI1 generstion will be avaliable only after TBT Controller will be initialized, because its based on operational resources region (BAR1)
// Credit: EdwardGeonity (Edwardgeo, Biggygeo)


DefinitionBlock ("", "SSDT", 2, "Nebula", "RAMREGIO", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GPCB, MethodObj)
    External (TBSE, FieldUnitObj)
    External (TBTD, MethodObj)
    External (TBTF, MethodObj)
    External (TBTS, FieldUnitObj)

    Device (DEVD)
    {
        Name (_HID, "DEVDEAD0")  // _HID: Hardware ID
        Method (CDBG, 0, NotSerialized)
        {
        }
    }

    Mutex (TBMU, 0x00)
    Event (TBEV)
    Name (VEND, "HP")
    Scope (_SB.PCI0)
    {
        Device (THDE)
        {
            Name (_HID, "THDE0000")  // _HID: Hardware ID
            Method (PBRO, 0, NotSerialized)
            {
                Name (HLP1, "PCI_BRIDGE_PRIMARY_BUS_REGISTER_OFFSET")
                If (LEqual (VEND, "HP"))
                {
                    Store (0x78, Local0)
                }
                ElseIf (LEqual (VEND, "DELL"))
                {
                    Store (0x70, Local0)
                }
                ElseIf (LEqual (VEND, "ASUS"))
                {
                    Store (0xF0, Local0)
                }
                ElseIf (LEqual (VEND, "LENOVO"))
                {
                    Store (UPSB, Local0)
                }

                Return (Local0)
            }

            Method (GTNV, 0, NotSerialized)
            {
                Name (BASE, 0x0000000100000000)
                Name (LNGT, 0x007BF800)
                Method (SCNM, 1, Serialized)
                {
                    Name (HLP1, "Scan for free pages. Starting at (BASE) with end of (LNGT)")
                    Name (HLP2, "One page = 0x1000")
                    Store (Arg0, Local0)
                    OperationRegion (MSCN, SystemMemory, Local0, 0x1000)
                    Field (MSCN, DWordAcc, NoLock, Preserve)
                    {
                        TMP0,   32, 
                        Offset (0xFF), 
                        TMP1,   32
                    }

                    If (LAnd (LEqual (TMP0, Zero), LEqual (TMP1, Zero)))
                    {
                        Store (0xFACEDFAD, TMP0)
                        Store (0xFACEDFAD, TMP1)
                        Sleep (One)
                        If (LAnd (LNotEqual (TMP0, Zero), LNotEqual (TMP1, Zero)))
                        {
                            Name (HLP3, "MEMORY REGION IS WRITABLE")
                            Store (Zero, TMP0)
                            Store (Zero, TMP1)
                            Store (Concatenate ("GTNV:SCNM=", Local0), Debug)
                            Return (Local0)
                        }
                        ElseIf (LAnd (LEqual (TMP0, Zero), LEqual (TMP1, Zero)))
                        {
                            Return (Zero)
                        }
                    }
                    ElseIf (LAnd (LEqual (TMP0, 0xFFFFFFFF), LEqual (TMP1, 0xFFFFFFFF)))
                    {
                        Return (Zero)
                    }

                    Return (Zero)
                }

                Store (BASE, Local0)
                Store (0xFF, Local1)
                While (LGreater (Local1, Zero))
                {
                    Add (Local0, 0x5000, Local0)
                    Store (SCNM (Local0), Local2)
                    If (LNotEqual (Local2, Zero))
                    {
                        Break
                    }

                    Decrement (Local1)
                    Sleep (One)
                }

                Return (Local2)
            }

            Method (GALA, 0, NotSerialized)
            {
                Method (RPAG, 0, NotSerialized)
                {
                    If (LEqual (GRBA, Zero))
                    {
                        Store (\_SB.PCI0.GPCB (), Local0)
                        Name (HLP1, "GRBA - PCI ROOT COMPLEX ADDRESS")
                    }

                    Store (Local0, GRBA)
                    Add (Local0, ShiftLeft (TBTD (TBSE), 0x0F), Local0)
                    Add (Local0, ShiftLeft (TBTF (TBSE), 0x0C), Local0)
                    Store (Concatenate ("RPAG:RPAD=", Local0), Debug)
                    If (LNotEqual (Local0, RPAD))
                    {
                        Store (Local0, RPAD)
                        Sleep (One)
                        Name (HLP2, "RPAD - ROOT PORT ADDRESS")
                    }
                    Else
                    {
                        Name (HLP3, "RPAD - REMAIN THE SAME")
                    }

                    Return (RPAD)
                }

                Method (GADM, 0, NotSerialized)
                {
                    Name (HLP0, "RPTB - Root Port Thunderbolt Address")
                    OperationRegion (PCHM, SystemMemory, RPAD, 0x28)
                    Field (PCHM, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x19), 
                        SBUS,   8, 
                        Offset (0x20), 
                        MEML,   16, 
                        MEMB,   16
                    }

                    If (LOr (LEqual (UMML, Zero), LEqual (UMMB, Zero)))
                    {
                        Store (MEML, UMML)
                        Store (Concatenate ("RPAG:UMML=", MEML), Debug)
                        Store (MEMB, UMMB)
                        Store (Concatenate ("RPAG:UMMB=", MEMB), Debug)
                    }

                    Store (SBUS, Local0)
                    Store (Local0, UPSB)
                    Multiply (Local0, 0x00100000, Local0)
                    Store (GRBA, Local1)
                    Add (Local0, Local1, Local0)
                    If (LOr (LOr (LEqual (T2P1, Zero), LEqual (TDB1, Zero)), LEqual (TNH1, Zero)))
                    {
                        Add (Add (Multiply (PBRO (), 0x00100000), Local1), 0x0548, T2P1)
                        Add (Local0, 0x00100000, TDB1)
                        Add (TDB1, 0x8000, TD11)
                        Add (TDB1, 0x00010000, TD21)
                        Add (TDB1, 0x00020000, TD41)
                        Add (Local0, 0x00200000, TNH1)
                        Sleep (One)
                    }

                    If (LNotEqual (Local0, TUP1))
                    {
                        Store (Local0, TUP1)
                        Sleep (One)
                        Return (TUP1)
                    }
                    Else
                    {
                        Return (TUP1)
                    }
                }

                Store (RPAG (), Local0)
                GADM ()

                Return (Local0)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \DEVD.CDBG ()
                Store (Concatenate ("GRBA=", GRBA), Debug)
                Store (Concatenate ("RPAD=", RPAD), Debug)
                Store (Concatenate ("T2P1=", T2P1), Debug)
                Store (Concatenate ("TUP1=", TUP1), Debug)
                Store (Concatenate ("TDB1=", TDB1), Debug)
                Store (Concatenate ("TD11=", TD11), Debug)
                Store (Concatenate ("TD21=", TD21), Debug)
                Store (Concatenate ("TD41=", TD41), Debug)
                Store (Concatenate ("TNH1=", TNH1), Debug)
                Store (Concatenate ("NHI1=", NHI1), Debug)
                Store (Concatenate ("UMMB=", UMMB), Debug)
                Store (Concatenate ("UMML=", UMML), Debug)
                Store (Concatenate ("UPSB=", UPSB), Debug)
            }
        }
    }

    Name (HP_A, "(GRBA)PCI ROOT COMPLEX ADDRESS")
    Name (HP_B, "(RPAD)ROOT PORT ADDRESS")
    Name (HP_C, "(T2P1)UPSTREAM TBT CONTROLLER INIT REGISTER ADDRESS")
    Name (HP_D, "(TUP1)UPSTREAM TBT CONTROLLER ADDRESS")
    Name (HP_E, "(TDB1)BRIDGE BASE ADDRESS")
    Name (HP_F, "(TD11)BRIDGE 01 ADDRESS")
    Name (HP_G, "(TD21)BRIDGE 02 ADDRESS")
    Name (HP_H, "(TD41)BRIDGE 04 ADDRESS")
    Name (HP_K, "(TNH1)TBT CONTROLLER DEVICE ADDRESS")
    Name (HP_L, "(NHI1)TBT CONTROLLER MEMORY OPERATION REGION (REGISTERS)")
    Name (HP_M, "(UMMB)RP BASE OPERAION REGION RESERVED")
    Name (HP_N, "(UMML)RP BASE LENGTH OPERAION REGION RESERVED")
    OperationRegion (TNVS, SystemMemory, \_SB.PCI0.THDE.GTNV (), 0x44)
    Field (TNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0x10), 
        GRBA,   32, 
        RPAD,   32, 
        T2P1,   32, 
        TUP1,   32, 
        TDB1,   32, 
        TD11,   32, 
        TD21,   32, 
        TD41,   32, 
        TNH1,   32, 
        NHI1,   32, 
        UMMB,   32, 
        UMML,   32, 
        UPSB,   8
    }

    OperationRegion (RPSM, SystemMemory, \_SB.PCI0.THDE.GALA (), 0x54)
    Field (RPSM, DWordAcc, NoLock, Preserve)
    {
        RPVD,   32, 
        RPR4,   8, 
        Offset (0x18), 
        RP18,   8, 
        RP19,   8, 
        RP1A,   8, 
        Offset (0x1C), 
        RP1C,   16, 
        Offset (0x20), 
        R_20,   32, 
        R_24,   32, 
        Offset (0x52), 
            ,   11, 
        RPLT,   1, 
        Offset (0x54)
    }

    OperationRegion (RSTR, SystemMemory, NHI1, 0x0100)
    Field (RSTR, DWordAcc, NoLock, Preserve)
    {
        CIOR,   32, 
        Offset (0xB8), 
        ISTA,   32, 
        Offset (0xF0), 
        ICME,   32
    }

    OperationRegion (T2PM, SystemMemory, T2P1, 0x08)
    Field (T2PM, DWordAcc, NoLock, Preserve)
    {
        T2PR,   32, 
        P2TR,   32
    }

    OperationRegion (UPSM, SystemMemory, TUP1, 0x0548)
    Field (UPSM, DWordAcc, NoLock, Preserve)
    {
        UPVD,   32, 
        UP04,   8, 
        Offset (0x08), 
        CLRD,   32, 
        Offset (0x18), 
        UP18,   8, 
        UP19,   8, 
        UP1A,   8, 
        Offset (0x1C), 
        UP1C,   16, 
        Offset (0x20), 
        UP20,   32, 
        UP24,   32, 
        Offset (0xD2), 
            ,   11, 
        UPLT,   1, 
        Offset (0xD4), 
        Offset (0x544), 
        UPMB,   1, 
        Offset (0x548)
    }

    OperationRegion (DNSM, SystemMemory, TDB1, 0xD4)
    Field (DNSM, DWordAcc, NoLock, Preserve)
    {
        DPVD,   32, 
        DP04,   8, 
        Offset (0x18), 
        DP18,   8, 
        DP19,   8, 
        DP1A,   8, 
        Offset (0x1C), 
        DP1C,   16, 
        Offset (0x20), 
        DP20,   32, 
        DP24,   32, 
        Offset (0xD2), 
            ,   11, 
        DPLT,   1, 
        Offset (0xD4)
    }

    OperationRegion (DS3M, SystemMemory, TD11, 0x40)
    Field (DS3M, DWordAcc, NoLock, Preserve)
    {
        D3VD,   32, 
        D304,   8, 
        Offset (0x18), 
        D318,   8, 
        D319,   8, 
        D31A,   8, 
        Offset (0x1C), 
        D31C,   16, 
        Offset (0x20), 
        D320,   32, 
        D324,   32
    }

    OperationRegion (DS4M, SystemMemory, TD21, 0x0568)
    Field (DS4M, DWordAcc, NoLock, Preserve)
    {
        D4VD,   32, 
        D404,   8, 
        Offset (0x18), 
        D418,   8, 
        D419,   8, 
        D41A,   8, 
        Offset (0x1C), 
        D41C,   16, 
        Offset (0x20), 
        D420,   32, 
        D424,   32, 
        Offset (0x564), 
        DVES,   32
    }

    OperationRegion (DS5M, SystemMemory, TD41, 0x40)
    Field (DS5M, DWordAcc, NoLock, Preserve)
    {
        D5VD,   32, 
        D504,   8, 
        Offset (0x18), 
        D518,   8, 
        D519,   8, 
        D51A,   8, 
        Offset (0x1C), 
        D51C,   16, 
        Offset (0x20), 
        D520,   32, 
        D524,   32
    }

    OperationRegion (NHIM, SystemMemory, TNH1, 0x40)
    Field (NHIM, DWordAcc, NoLock, Preserve)
    {
        NH00,   32, 
        NH04,   8, 
        Offset (0x10), 
        NH10,   32, 
        NH14,   32
    }
}

