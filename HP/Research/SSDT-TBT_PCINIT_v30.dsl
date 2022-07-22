DefinitionBlock ("", "SSDT", 2, "Nebula", "TbtIni30", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)   
    External (_SB_.PCI0.GPCB, MethodObj)    
    External (_SB_.TBFP, MethodObj)    
    External (FPGN, FieldUnitObj)  
    External (SOHP, FieldUnitObj)    
    External (TBSE, FieldUnitObj)   
    External (PNVD, MethodObj) 
    External (TBTD, MethodObj)    
    External (TBTF, MethodObj)    
    External (TBTS, FieldUnitObj)  

    Device (DEVD)
    {
        Name (_HID, "DEVXDEAD")  // _HID: Hardware ID
        Name (WAI9, Zero)
        Method (CDBG, 0, NotSerialized)
        {
            Name (DBGL, Zero)
            
            If (LEqual (DBGL, One))
            {
                WTFC ()
            }
            If (LEqual (DBGL, 0x02))
            {
                \PNVD ()
            }

            If (LEqual (DBGL, 0x03))
            {
                WTFC ()
               \HMAC ()
            
            }
            VAIT ()
        }
        Method (WTFC, 0, NotSerialized)
        {
            Name (HLP7, "TBT: UPSTREAM PCI CONFIG - DUMP")
            OperationRegion (TQD1, SystemMemory, \_SB.PCI0.THND.TUSA, 0x0256)
            Field (TQD1, AnyAcc, Lock, Preserve)
            {
                F400,   512
            }

            Name (HLP8, "TBT: BRIDGE PCI CONFIG - DUMP")
            OperationRegion (T3B1, SystemMemory, \_SB.PCI0.THND.TBRA, 0x0256)
            Field (T3B1, AnyAcc, Lock, Preserve)
            {
                F500,   512
            }

            Name (HLP9, "TBT: PCI to PCI CONFIG - DUMP")
            OperationRegion (TWD1, SystemMemory, \_SB.PCI0.THND.TBR1, 0x0256)
            Field (TWD1, AnyAcc, Lock, Preserve)
            {
                F508,   512
            }

            Name (HLPA, "TBT: PCI to PCI CONFIG - DUMP")
            OperationRegion (TWBQ, SystemMemory, \_SB.PCI0.THND.TBR2, 0x0256)
            Field (TWBQ, AnyAcc, Lock, Preserve)
            {
                F510,   512
            }

            Name (HLPB, "TBT: PCI to PCI CONFIG - DUMP")
            OperationRegion (TWE1, SystemMemory, \_SB.PCI0.THND.TBR4, 0x0256)
            Field (TWE1, AnyAcc, Lock, Preserve)
            {
                F520,   512
            }
            
            Name (HLPC, "TBT: UPSTREAM PCI CONFIG - DUMP")
            OperationRegion (TUD1, SystemMemory, \_SB.PCI0.THND.TCDA, 0x0256)
            Field (TUD1, AnyAcc, Lock, Preserve)
            {
                F600,   512
            }
            
            Name (HLZC, "PCH: PCH PCI CONFIG - DUMP")
            OperationRegion (TZD1, SystemMemory, \_SB.PCI0.THND.PCRP, 0x0256)
            Field (TZD1, AnyAcc, Lock, Preserve)
            {
                E400,   512
            }


            Field (TUD1, AnyAcc, Lock, Preserve)
            {
                Offset (0x10), 
                ADQA,   32
            }

            Name (HLPE, "NHI Operation Region - MEMORY DUMP")
            OperationRegion (E2D1, SystemMemory, ADQA, 0x0256)
            Field (E2D1, AnyAcc, Lock, Preserve)
            {
                E2E2,   128
            }

            Name (HLPF, "NHI Operation Region - ICM STATUS REGISTER")
            OperationRegion (ICMQ, SystemMemory, Add (ADQA, 0x00039858), 0x0100)
            Field (ICMQ, AnyAcc, Lock, Preserve)
            {
                Offset (0xEC), 
                ICDD,   32
            }

            TDBG ("PCH:PCH RP", "ADDR", \_SB.PCI0.THND.PCRP)
            TDBG ("PCH:PCH RP:PciConfig", "DUMP", E400)
            TDBG ("TBT:UpStream", "ADDR", \_SB.PCI0.THND.TUSA)
            TDBG ("TBT UpStream:PciConfig", "DUMP", F400)            
            TDBG ("TBT:BridgeRP:__________", "ADDR", \_SB.PCI0.THND.TBRA)
            TDBG ("TBT BridgeRP:PciConfig", "DUMP", F500)
            TDBG ("TBT:PciRP 01", "ADDR", \_SB.PCI0.THND.TBR1)
            TDBG ("TBT:PciRP 01", "DUMP", F508)
            TDBG ("TBT:PciRP 02", "ADDR", \_SB.PCI0.THND.TBR2)
            TDBG ("TBT:PciRP 02", "DUMP", F510)
            TDBG ("TBT:PciRP 04", "ADDR", \_SB.PCI0.THND.TBR4)
            TDBG ("TBT:PciRP 04", "DUMP", F520)
            TDBG ("NHI:ContrDEV", "ADDR", \_SB.PCI0.THND.TCDA)
            TDBG ("NHI ContrDEV:PciConfig", "DUMP", F600)
            TDBG ("NHI OpREG", "ADRS", ADQA)
            TDBG ("NHI OpREG", "DUMP", E2E2)
            TDBG ("ICME(REG)", "DUMP", ICDD)

        }

        Method (XDBG, 3, NotSerialized)
        {
            CreateBitField (DBLV, Zero, DBUG)
            CreateBitField (DBLV, One, ADDR)
            CreateBitField (DBLV, 0x02, DUMP)
            CreateBitField (DBLV, 0x03, LOC)
            CreateBitField (DBLV, 0x04, ARG)
            CreateBitField (DBLV, 0x05, RSLT)
            CreateBitField (DBLV, 0x06, CHKP)
            CreateBitField (DBLV, 0x07, RSRC)
            Store (Zero, Local0)
            If (LAnd (LEqual (Arg1, "DSBL"), LEqual (DBUG, Zero)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "ADDR"), LEqual (ADDR, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "DUMP"), LEqual (DUMP, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "LOC_"), LEqual (LOC, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "ARG_"), LEqual (ARG, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "RSLT"), LEqual (RSLT, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "CHKP"), LEqual (CHKP, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LAnd (LEqual (Arg1, "RSRC"), LEqual (RSRC, One)))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg1, "MESG"))
            {
                Store (0x02, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            If (LEqual (Local0, One))
            {
                Store (Concatenate (Concatenate (Concatenate (Concatenate (Arg0, "|"), Arg1), "| ="), Arg2), Local1)
                Store (Local1, Debug)
                Return (Local1)
            }

            If (LEqual (Local0, 0x02))
            {
                Store (Concatenate (Concatenate (Concatenate (Concatenate (Arg0, "|"), Arg1), "| ="), Arg2), Local1)
                Store (Local1, Debug)
                Return (Local1)
            }

            Return (Zero)
        }

        Method (VAIT, 0, NotSerialized)
        {
            If (LEqual (\DEVD.WAI9, One))
            {
                Store (0x03E8, Local3)
                While (LGreater (Local3, Zero))
                {
                    Decrement (Local3)
                    Sleep (One)
                }
            }
        }
    }

    Name (VEND, "HP")
    Name (H_1C, "(AMA1) - Avaliable Memory Address")
    Name (AMA1, 0x2297F000)
    Mutex (TBIM, 0x00)
    Event (TBEV)
    Name (DBLV, Buffer (0x08)
    {
         0xFF                                           
    })
    Method (TDBG, 3, NotSerialized)
    {
        If (CondRefOf (\DEVD.XDBG))
        {
            Return (\DEVD.XDBG (Arg0, Arg1, Arg2))
        }

        Return (Zero)
    }

    Scope (_SB.PCI0)
    {
        Device (THND)
        {
            Name (ACIN, One)
            Name (HPRP, Zero)
            Name (PCRP, Zero)
            Name (TRBS, Zero)
            Name (TUSA, Zero)
            Name (TBR8, Zero)
            Name (TBRA, Zero)
            Name (TBR1, Zero)
            Name (TBR2, Zero)
            Name (TBR4, Zero)
            Name (TCDB, Zero)
            Name (TCDA, Zero)
            Name (TDMR, Zero)
            Name (UMEL, Zero)
            Name (UMEB, Zero)
            Name (UPML, Zero)
            Name (UPMB, Zero)
            Name (NHIH, Zero)
            Name (NHOR, Zero)
            Name (_HID, "THUNDE00")  // _HID: Hardware ID
            Method (TEIN, 0, Serialized)
            {
                RPCA ()
                RPTB ()
                \_SB.TBFP (One)
                Store (Zero, SOHP)
                OperationRegion (TBRP, SystemMemory, TUSA, 0x1A)
                Field (TBRP, DWordAcc, NoLock, Preserve)
                {
                    RPID,   32, 
                    CSRE,   32
                }

                Name (HLP1, "Wait 500 milliseconds while tbt will appear")
                Store (0x01F4, Local0)
                Store (CSRE, Local1)
                While (LAnd (LGreater (Local0, Zero), LEqual (Local1, 0xFFFFFFFF)))
                {
                    Decrement (Local0)
                    Sleep (One)
                    Store (CSRE, Local1)
                }

                Name (HLP2, "Device started. Time to initialize it")
                TBUP ()
                Name (HLP4, "Device initialized. Time to build dev tree")
                PINI ()
            }

            Method (RPCA, 0, NotSerialized)
            {
                Name (HLP0, "RPCA - Root Port Chipset Address")
                If (LEqual (HPRP, Zero))
                {
                    Store (\_SB.PCI0.GPCB (), HPRP)
                    Name (HLP1, "HPRP - Hack Platform Pcie Root Port")
                    TDBG ("PCI-ROOT-PORT-ADDRESS (HPRP)=", "ADRS", HPRP)
                    Store (HPRP, Local0)
                    Add (Local0, ShiftLeft (TBTD (TBSE), 0x0F), Local0)
                    Add (Local0, ShiftLeft (TBTF (TBSE), 0x0C), Local0)
                    Store (Local0, PCRP)
                    Name (HLP2, "PCRP - Platform Controller Root Port")
                    TDBG ("PCH-ROOT-HUB-ADDRESS (PCRP)=", "ADRS", PCRP)
                    Return (PCRP)
                }
                Else
                {
                    Return (PCRP)
                }
            }

            Method (RPTB, 0, NotSerialized)
            {
                Name (HLP0, "RPTB - Root Port Thunderbolt Address")
                OperationRegion (PCHM, SystemMemory, PCRP, 0x1A)
                Field (PCHM, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x19), 
                    SBUS,   8
                }

                If (LNotEqual (SBUS, TRBS))
                {
                    Store (SBUS, TRBS)
                    Store (SBUS, Local1)
                    Name (HLP1, "TRBS - Thunderbolt Root Bus Number")
                    Store (HPRP, Local0)
                    Multiply (Local1, 0x00100000, Local1)
                    Add (Local1, Local0, Local2)
                    Name (HLP2, "TUSA - Thunderbolt UpStream Address")
                    Store (Local2, TUSA)
                    TDBG ("TBT-US-ADR (TUSA)=", "ADRS", TUSA)
                    Return (TUSA)
                }
                Else
                {
                    TDBG ("RPTB", "MESG", "TBT-US-ADR=Remains the same")
                    Return (TUSA)
                }
            }

            Method (TBUP, 0, NotSerialized)
            {
                Store ("TBUP", Debug)
                If (LEqual (VEND, "HP"))
                {
                    Store (0x00787800, Local0)
                }

                If (LEqual (VEND, "DELL"))
                {
                    Store (0x00707000, Local0)
                }

                If (LEqual (VEND, "LENOVO"))
                {
                    Store (Zero, Local0)
                }

                Name (HLP1, "Read PCH Mem at addr PCRP")
                OperationRegion (RP_X, SystemMemory, PCRP, 0x28)
                Field (RP_X, DWordAcc, NoLock, Preserve)
                {                   
                          VEID,   16,  //0x0 VendorID - VD
                          DEID,   16,  //0x2 DeviceID - VD
                          PST1,   8,  //0x4 Status (Apples RPR4,UP04,DP04,D304,D404,D504)
                          PST2,   8,  //0x5 Status
                          PCMD,   16,  //0x6 Command
                          CLCD,   24,  //0x08 Class Code (Apple CLRD Only at UpStream)
                          PREV,   8,  //0x0B Revission ID
                          BIST,   8,  //0x0C BIST
                          HETY,   8,  //0x0D Header Type
                          LTIM,   8,  //0x0E Latency Timer
                          CLIS,   8,  //0x0F Cache Line Size
                          BAR1,   32,  //0x10 Base Address Bar
                          BAR2,   32,  //0x14 Base Address Bar
                          REG6,   32, //0x18 Secondary Latency Timer, Subordinate Bus Number, Secondary Bus Number, Primary Bus Number
                          SST1,   8,  //0x1C Second ary Status (Apples RP1C , UP1C , DP1C , D31C, D41C D51C)
                          SST2,   8,  //0x1B Second ary Status
                          IOLI,   8,  //0x1E I O Limit
                          IOBA,   8,  //0x1F I O BASE
                          MEML,   16,  //0x20 Memory Limit (Apples RP20,UP20,DP20,D320,D420,D520)
                          MEMB,   16,  //0x22 Memory Base (Apples RP22,UP22,DP22,D322,D422,D522)
                          PMEL,   16,  //0x24 Prefetchadble Memory Limit
                          PMEB,   16,  //0x26 Prefetchadble Memory Base
                }

                Name (HLP2, "Save primary TBT RP bus, send TBT RP to Primary bus register Offset")
                Store (REG6, Local1)
                Store (Local0, REG6)
                TDBG ("TBUP", "MESG", "TBT RP Initialize - Start")
                OperationRegion (PXVD, SystemMemory, RPTB (), 0x0550)
                Field (PXVD, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                Store (0x01F4, Local3)
                Store (0x0D, P2TB)
                While (LGreater (Local3, Zero))
                {
                    Subtract (Local3, One, Local3)
                    Store (TB2P, Local4)
                    If (And (Local4, One))
                    {
                        TDBG ("TBUP", "MESG", "TBT RP Initialize - Complete")
                        Break
                    }

                    Sleep (0x32)
                }

                Store (Zero, P2TB)
                Name (HLP4, "Move TBT RP back from Primary Offset")
                Store (Local1, REG6)
                RPTB ()
                Store ("End-of-TBUP", Debug)
            }

            Method (EPDM, 1, NotSerialized)
            {
                Name (HLP0, "Enumerate pcie device memory space with Bus Number return")
                Method (SCAN, 1, Serialized)
                {
                    Store (Arg0, Local0)
                    OperationRegion (GB_D, SystemMemory, Local0, 0x84)
                    Field (GB_D, DWordAcc, NoLock, Preserve)
                    {
                        TEM1,   32, 
                        Offset (0x80), 
                        TEM2,   32
                    }

                    Field (GB_D, DWordAcc, NoLock, Preserve)
                    {
                        VEND,   16
                    }

                    If (LAnd (LEqual (TEM1, 0xFFFFFFFF), LEqual (TEM2, 0xFFFFFFFF)))
                    {
                        Subtract (Local0, HPRP, Local1)
                        Divide (Local1, 0x00100000, , Local1)
                    }
                    ElseIf (LEqual (VEND, 0x8086))
                    {
                        Subtract (Local0, HPRP, Local1)
                        Divide (Local1, 0x00100000, , Local1)
                    }
                    Else
                    {
                        Return (0xFF)
                    }

                    Return (Local1)
                }

                Name (HLP1, "(Arg0) IS ROOT PORT OR DEVICE PORT OR SUB PORT")
                Name (HLP2, "(Arg1) IS MULTIPLEXER. If=1 > F.XX. Or If=10 > X.X0.")
                Store (Arg0, Local0)
                Store (0x03E8, Local3)
                While (LGreater (Local3, Zero))
                {
                    Add (Local0, 0x00100000, Local0)
                    Store (SCAN (Local0), Local4)
                    If (LNotEqual (Local4, 0xFF))
                    {
                        Break
                    }

                    Decrement (Local3)
                    Sleep (One)
                }
                TDBG ("EPDM-BUS (****)=", "ADRS", Local4)
                Return (Local4)
            }

            Method (PINI, 0, Serialized)
            {
                Store ("PINI", Debug)
                
                Method (TUPR, 0, NotSerialized)
                {
                Name (HLP1, "Read PCH Mem at addr PCRP")
                OperationRegion (RP_X, SystemMemory, PCRP, 0x28)
                Field (RP_X, DWordAcc, NoLock, Preserve)
                {                   
                          Offset (0x20),
                          MEML,   16,  //0x20 Memory Limit (Apples RP20,UP20,DP20,D320,D420,D520)
                          MEMB,   16,  //0x22 Memory Base (Apples RP22,UP22,DP22,D322,D422,D522)
                          PMEL,   16,  //0x24 Prefetchadble Memory Limit
                          PMEB,   16,  //0x26 Prefetchadble Memory Base
                }
                Name (HLP3, "=== SAVE MEM BARS TO BUFFERS ===")

                If (LOr (LEqual (UMEL, 0), LEqual (UMEB, 0)))
                {
                Store (MEML, UMEL)
                Store (MEMB, UMEB)
                Store (PMEL, UPML)
                Store (PMEB, UPMB)
                }
                ElseIf (LNotEqual (MEML, (LOr (LEqual (UMEL, 0), LEqual (UMEB, 0))))){Debug="<<<<<<< LNotEqual (MEML, (LOr (LEqual (UMEL, 0)"}
                
                TDBG ("SAVE MEM BARS TO BUFFERS (UMEL)=", "ADRS", MEML)
                TDBG ("SAVE MEM BARS TO BUFFERS (UMEB)=", "ADRS", MEMB)
                Name (HLP5, "=== SAVE MEM BARS TO BUFFERS ===")
                
                }
                
                Method (TBRP, 0, NotSerialized)
                {
                    Store ("TBRP", Debug)
                    OperationRegion (RP_X, SystemMemory, PCRP, 0x28)
                    Field (RP_X, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x18), 
                        RPBS,   8
                    }

                    Name (HLP0, "INITIALIZE THUNDERBOLT ROOT")
                    Store (EPDM (TUSA), TBR8)
                    Add (Multiply (TBR8, 0x00100000), HPRP, TBRA)
                    TDBG ("TBT-BR-ADR (TBRA)=", "ADRS", TBRA)
                    Name (HLP1, "(TBR8) Thunderbolt bridge Bus")
                    Name (HLP5, "===STARTING ADDING BARS TO TBT TREE () ===")
                    Name (HLZ3, "We are inside of tbt upstream memmory (F040)")
                    OperationRegion (RW01, SystemMemory, TUSA, 0x0480)
                    Field (RW01, DWordAcc, NoLock, Preserve)
                    {
                          VEID,   16,  //0x0 VendorID - VD
                          DEID,   16,  //0x2 DeviceID - VD
                          PST1,   8,  //0x4 Status (Apples RPR4,UP04,DP04,D304,D404,D504)
                          PST2,   8,  //0x5 Status
                          PCMD,   16,  //0x6 Command
                          CLCD,   24,  //0x08 Class Code (Apple CLRD Only at UpStream)
                          PREV,   8,  //0x0B Revission ID
                          BIST,   8,  //0x0C BIST
                          HETY,   8,  //0x0D Header Type
                          LTIM,   8,  //0x0E Latency Timer
                          CLIS,   8,  //0x0F Cache Line Size
                          BAR1,   32,  //0x10 Base Address Bar
                          BAR2,   32,  //0x14 Base Address Bar
                          SELT,   8,  //0x18 Secondary Latency Timer  (Apples RP18, UP18,DP18,D318,D418,D518)
                          BBUS,   8,  //0x19 Subordinate Bus Number  (Apples RP19, UP19,DP19,D319,D419,D519)
                          SBUS,   8,  //0x1A Secondary Bus Number  (Apples RPA1, UP1A,DP1A,D31A,D41A,D51A)
                          PBUS,   8,  //0x1B Primary Bus Number
                          SST1,   8,  //0x1C Second ary Status (Apples RP1C , UP1C , DP1C , D31C, D41C D51C)
                          SST2,   8,  //0x1B Second ary Status
                          IOLI,   8,  //0x1E I O Limit
                          IOBA,   8,  //0x1F I O BASE
                          MEML,   16,  //0x20 Memory Limit (Apples RP20,UP20,DP20,D320,D420,D520)
                          MEMB,   16,  //0x22 Memory Base (Apples RP22,UP22,DP22,D322,D422,D522)
                          PMEL,   16,  //0x24 Prefetchadble Memory Limit
                          PMEB,   16,  //0x26 Prefetchadble Memory Base
                          PBUP,   32,  //0x28 Prefetchadble Base Upper
                          PBLI,   32,  //0x2C Prefetchadble Base Limit
                          IOLU,   16,  //0x30 IO Limits Upper
                          IOBU,   16,  //0x32 IO Base Upper
                          RSRV,   24,  //0x34
                          CPOI,   8,  //0x37 Capabilities Pointer
                          EROM,   32,  //0x28 Expansion ROM  Adr
                          BCTR,   16,  //0x3B Bridge control
                          INTP,   8,  //0x3D Interr upt Pin
                          INTL,   8  //0x3E Interru pt Line
                    }

                    Store (0x06, PST1)
                    Store (RPBS, SELT)
                    Store (TBR8, BBUS)
                    Add (TCDB, 0x69, SBUS)
                    Name (HLZZ, "INITIALIZE OPERATION REGION")
                    TUPR ()
                    Store (UMEL, MEML)
                    Store (UMEB, MEMB)
                    Store (UPML, PMEL)
                    Store (UPMB, PMEB)
                    
                }

                Method (BRIG, 0, NotSerialized)
                {
                    Store ("BRIG", Debug)
                    Name (HLP2, "INITIALIZE THUNDERBOLT BRIDGE")
                    Store (EPDM (TBRA), TCDB)
                    Add (Multiply (TCDB, 0x00100000), HPRP, TCDA)
                    TDBG ("TBT-CD-ADR (TCDA)=", "ADRS", TCDA)
                    Name (HLP3, "(TBR8) Thunderbolt Bridge Bus")
                    Name (HLQ3, "We are inside of tbt bridge memmory")
                    OperationRegion (RW02, SystemMemory, TBRA, 0x40)
                    Field (RW02, DWordAcc, NoLock, Preserve)
                    {
                          VEID,   16,  //0x0 VendorID - VD
                          DEID,   16,  //0x2 DeviceID - VD
                          PST1,   8,  //0x4 Status (Apples RPR4,UP04,DP04,D304,D404,D504)
                          PST2,   8,  //0x5 Status
                          PCMD,   16,  //0x6 Command
                          CLCD,   24,  //0x08 Class Code (Apple CLRD Only at UpStream)
                          PREV,   8,  //0x0B Revission ID
                          BIST,   8,  //0x0C BIST
                          HETY,   8,  //0x0D Header Type
                          LTIM,   8,  //0x0E Latency Timer
                          CLIS,   8,  //0x0F Cache Line Size
                          BAR1,   32,  //0x10 Base Address Bar
                          BAR2,   32,  //0x14 Base Address Bar
                          SELT,   8,  //0x18 Secondary Latency Timer  (Apples RP18, UP18,DP18,D318,D418,D518)
                          BBUS,   8,  //0x19 Subordinate Bus Number  (Apples RP19, UP19,DP19,D319,D419,D519)
                          SBUS,   8,  //0x1A Secondary Bus Number  (Apples RPA1, UP1A,DP1A,D31A,D41A,D51A)
                          PBUS,   8,  //0x1B Primary Bus Number
                          SST1,   8,  //0x1C Second ary Status (Apples RP1C , UP1C , DP1C , D31C, D41C D51C)
                          SST2,   8,  //0x1B Second ary Status
                          IOLI,   8,  //0x1E I O Limit
                          IOBA,   8,  //0x1F I O BASE
                          MEML,   16,  //0x20 Memory Limit (Apples RP20,UP20,DP20,D320,D420,D520)
                          MEMB,   16,  //0x22 Memory Base (Apples RP22,UP22,DP22,D322,D422,D522)
                          PMEL,   16,  //0x24 Prefetchadble Memory Limit
                          PMEB,   16,  //0x26 Prefetchadble Memory Base
                          PBUP,   32,  //0x28 Prefetchadble Base Upper
                          PBLI,   32,  //0x2C Prefetchadble Base Limit
                          IOLU,   16,  //0x30 IO Limits Upper
                          IOBU,   16,  //0x32 IO Base Upper
                          RSRV,   24,  //0x34
                          CPOI,   8,  //0x37 Capabilities Pointer
                          EROM,   32,  //0x28 Expansion ROM  Adr
                          BCTR,   16,  //0x3B Bridge control
                          INTP,   8,  //0x3D Interr upt Pin
                          INTL,   8  //0x3E Interru pt Line
                    }

                    Store (0x06, PST1)
                    Store (TBR8, SELT)
                    Store (TCDB, BBUS)
                    Store (TBR8, SBUS)
                    Store (UMEL, MEML)
                    Store (UMEL, MEMB)
                }

                Method (BRG1, 0, NotSerialized)
                {
                    Name (DEVN, 0x01)
                    Local0=TBRA
                    Local0=ShiftLeft (DEVN,0x0C)
                    TBR1=Local0
                }

                Method (BRG2, 0, NotSerialized)
                {
                    Name (DEVN, 0x02)
                    Local0=TBRA
                    Local0=ShiftLeft (DEVN,0x0C)
                    TBR2=Local0
            
                }

                Method (BRG4, 0, NotSerialized)
                {
                    Name (DEVN, 0x04)
                    Local0=TBRA
                    Local0=ShiftLeft (DEVN,0x0C)
                    TBR4=Local0
                }

                Method (TBDE, 0, NotSerialized)
                {
                    Store ("TBDE", Debug)
                    Name (HLP2, "INITIALIZE THUNDERBOLT DEVICE CONTROLLER")
                    Name (HLQ3, "We are inside of tbt device controller memmory")
                    OperationRegion (RW02, SystemMemory, TCDA, 0x40)
                    Field (RW02, DWordAcc, NoLock, Preserve)
                    {
                          VEID,   16,  //0x0 VendorID - VD
                          DEID,   16,  //0x2 DeviceID - VD
                          PST1,   8,  //0x4 Status (Apples RPR4,UP04,DP04,D304,D404,D504)
                          PST2,   8,  //0x5 Status
                          PCMD,   16,  //0x6 Command
                          CLCD,   24,  //0x08 Class Code (Apple CLRD Only at UpStream)
                          PREV,   8,  //0x0B Revission ID
                          BIST,   8,  //0x0C BIST
                          HETY,   8,  //0x0D Header Type
                          LTIM,   8,  //0x0E Latency Timer
                          CLIS,   8,  //0x0F Cache Line Size
                          BAR1,   32,  //0x10 Base Address Bar
                          BAR2,   32,  //0x14 Base Address Bar


                    }
                    Name (HLP1, "Wait 500 milliseconds while TB controller will appear")
                    Store (0x01F4, Local2)
                    Store (VEID, Local3)
                    While (LAnd (LGreater (Local2, Zero), LEqual (Local3, 0xFFFFFFFF)))
                        {
                        Decrement (Local2)
                        Sleep (One)
                        Store (VEID, Local3)
                        }


                    Store (0x06, PST1)
                    If (LEqual (BAR1, Zero))
                    {
                        Multiply (UMEL, 0x00010000, BAR1)
                        Add (Multiply (UMEL, 0x00010000), 0x00040000, BAR2)
                        Store (BAR1, Local0)
                        Store (Local0, NHOR)
                        TDBG ("NHI BAR (NHOR)=", "ADRS", Local0)
                        Add (Local0, 0x00039858, Local1)
                        Store (Local1, NHIH)
                        TDBG ("NHI ICM (NHIH)=", "ADRS", NHIH)
                        
                    }
                    ElseIf (LEqual (BAR1, 0xFFFFFFFF))
                    {
                        Concatenate ("NHI INIT FAILED WITH =", Local1, Debug)
                    }
                }

                Store ("Starting-PINI", Debug)
                TBRP ()
                BRIG ()
                BRG1 ()
                BRG2 ()
                BRG4 ()
                TBDE ()
                Signal (TBEV)
                Store ("End-of-PINI", Debug)
                \DEVD.CDBG ()
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \DEVD.CDBG ()
            }
        }
    }

    Name (HLPZ, "Mask fake FieldUnitObjects at the end of Pci config memory")
    OperationRegion (TNVS, SystemMemory, AMA1, 0x40)
    Field (TNVS, AnyAcc, NoLock, Preserve)
    {
        BICM,   8, 
        U2OP,   8, 
        NHI1,   32,
        NHRR,   32,
        PRP0,   32, 
        PCPA,   32, 
        T2P1,   32, 
        TUP1,   32, 
        TDB1,   32, 
        TD11,   32, 
        TD21,   32, 
        TD41,   32, 
        TNH1,   32
        
    }

    Method (HMAC, 0, NotSerialized)
    {
        Name (H_90, "BICM - Block ICM")
        Name (H_91, "U2OP - USB to operation")
        Name (H_92, "NHI1 - (TDMR) = ThunderboltController OperationMemoryResources+39858")
        Name (H_94, "PRP0 = (HPRP) - Pcie Root Port Address")
        Name (H_95, "PCPA = (PCRP) - PCH Root Port Address")
        Name (H_96, "T2P1 = (TUSA + 0x548) - ThunderboltRootPort Init register address")
        Name (H_97, "TUP1 = (TUSA) - ThunderboltRootPort, 0xF0400000")
        Name (H_98, "TDB1 = (TBRA) - ThunderboltDeviceBridge Address")
        Name (H_99, "TNH1 = (TCDA) - ThunderboltCotrollerDevice Address")
        Name (H_9A, "TD11 = (TBRA+0x8000) Pci-to-Pci Bridge (1)")
        Name (H_9B, "TD21 - (TBRA+0x10000) Pci-to-Pci Bridge (2)")
        Name (H_9C, "TD41 - (TBRA+0x20000) Pci-to-Pci Bridge (4)")
        Store (One, BICM)
        Store (Zero, U2OP)
        Store (\_SB.PCI0.THND.NHIH, NHI1)
        Store (\_SB.PCI0.THND.HPRP, PRP0)
        Store (\_SB.PCI0.THND.PCRP, PCPA)
        Add (\_SB.PCI0.THND.TUSA, 0x0548, T2P1)
        Store (\_SB.PCI0.THND.TUSA, TUP1)
        Store (\_SB.PCI0.THND.TBRA, TDB1)
        Store (\_SB.PCI0.THND.TBR1, TD11)
        Store (\_SB.PCI0.THND.TBR2, TD21)
        Store (\_SB.PCI0.THND.TBR4, TD41)
        Store (\_SB.PCI0.THND.TCDA, TNH1)
        Store (\_SB.PCI0.THND.NHOR, NHRR)
        
        
        Name (HLPQ, "Store name BufferObject content to FieldUnitObjects for external access")
        Concatenate ("HMAC:NHRR =", NHRR, Debug)
        Concatenate ("HMAC:NHI1 =", NHI1, Debug)
        Concatenate ("HMAC:PRP0 =", PRP0, Debug)
        Concatenate ("HMAC:PCPA =", PCPA, Debug)
        Concatenate ("HMAC:T2P1 =", T2P1, Debug)
        Concatenate ("HMAC:TUP1 =", TUP1, Debug)
        Concatenate ("HMAC:TNH1 =", TNH1, Debug)
        Concatenate ("HMAC:TD11 =", TD11, Debug)
        Concatenate ("HMAC:TD21 =", TD21, Debug)
        Concatenate ("HMAC:TD41 =", TD41, Debug)
    }

    Method (TWAK, 0, NotSerialized)
    {
        Reset (TBEV)
        TINE ()
    }

    Method (TINE, 0, NotSerialized)
    {
        Acquire (TBIM, 0xFFFF)
        \_SB.PCI0.THND.TEIN ()
        Wait (TBEV, 0xFFFF)
        Release (TBIM)
    }

    If (LEqual (TBTS, One))
    {
        TINE ()
    }
}

