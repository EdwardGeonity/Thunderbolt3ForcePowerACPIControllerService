



DefinitionBlock ("", "SSDT", 2, "EVEDBG", "MEMSIODB", 0x00003000)
{
    External (_SB_.GADR, MethodObj)
    External (_SB_.GGOV, MethodObj)
    External (_SB_.GGRP, MethodObj)
    External (_SB_.GNMB, MethodObj)
    External (_SB_.PCFG, BuffObj)
    External (_SB_.PCI0, DeviceObj)
    External (FPGN, FieldUnitObj)
    External (NOHP, FieldUnitObj)
    External (RMDT, DeviceObj)
    External (RMDT.PUSH, MethodObj) 
    External (SOHP, FieldUnitObj)
    External (TBSE, FieldUnitObj)
    External (TBTS, FieldUnitObj)
    External (TNAT, FieldUnitObj)
    External (WFEV, EventObj)

    Device (RMDT)
    {
        Name (_HID, "RMD0000")  // _HID: Hardware ID
        Name (RING, Package (0x0100){})
        Mutex (RTMX, 0x00)
        Name (HEAD, Zero)
        Name (TAIL, Zero)
        Method (PUSH, 1, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = (HEAD + One)
            If ((Local0 >= SizeOf (RING)))
            {
                Local0 = Zero
            }

            If ((Local0 != TAIL))
            {
                RING [HEAD] = Arg0
                HEAD = Local0
            }

            Release (RTMX)
            Notify (RMDT, 0x80) // Status Change
        }

        Method (FTCH, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = Zero
            If ((HEAD != TAIL))
            {
                Local0 = DerefOf (RING [TAIL])
                TAIL++
                If ((TAIL >= SizeOf (RING)))
                {
                    TAIL = Zero
                }
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (COUN, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Local0 = (HEAD - TAIL) /* \RMDT.TAIL */
            If ((Local0 < Zero))
            {
                Local0 += SizeOf (RING)
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (P1, 1, NotSerialized)
        {
            PUSH (Arg0)
        }

        Method (P2, 2, Serialized)
        {
            Name (TEMP, Package (0x02){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            PUSH (TEMP)
        }

        Method (P3, 3, Serialized)
        {
            Name (TEMP, Package (0x03){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            PUSH (TEMP)
        }

        Method (P4, 4, Serialized)
        {
            Name (TEMP, Package (0x04){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            PUSH (TEMP)
        }

        Method (P5, 5, Serialized)
        {
            Name (TEMP, Package (0x05){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            PUSH (TEMP)
        }

        Method (P6, 6, Serialized)
        {
            Name (TEMP, Package (0x06){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            TEMP [0x05] = Arg5
            PUSH (TEMP)
        }

        Method (P7, 7, Serialized)
        {
            Name (TEMP, Package (0x07){})
            TEMP [Zero] = Arg0
            TEMP [One] = Arg1
            TEMP [0x02] = Arg2
            TEMP [0x03] = Arg3
            TEMP [0x04] = Arg4
            TEMP [0x05] = Arg5
            TEMP [0x06] = Arg6
            PUSH (TEMP)
        }

        Method (DBG0, 1, NotSerialized)
        {
            Debug = Concatenate (Concatenate (Concatenate ("Read GGOV (", Arg0), ") = "), \_SB.GGOV (Arg0))
        }

        Method (DBG1, 1, NotSerialized)
        {
            Debug = "Read Ram Dump at address = Arg0"
            OperationRegion (PDW0, SystemMemory, Arg0, 0x40)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   512
            }

            Debug = Concatenate (Concatenate (Concatenate ("RAM AT :", Arg0), "="), TEMP)
        }

        Method (DBG2, 1, NotSerialized)
        {
            Debug = "Read Ram Bits and Byte at address = Arg0"
            OperationRegion (PDW0, SystemMemory, Arg0, 0x1)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                BIT0,   1, 
                BIT1,   1, 
                BIT2,   1, 
                BIT3,   1, 
                BIT4,   1, 
                BIT5,   1, 
                BIT6,   1, 
                BIT7,   1
            }

            Debug = Concatenate (Concatenate (Concatenate ("RAM AT :", Arg0), "="), TEMP)
            Debug = Concatenate ("BIT 0 = ", BIT0)
            Debug = Concatenate ("BIT 1 = ", BIT1)
            Debug = Concatenate ("BIT 2 = ", BIT2)
            Debug = Concatenate ("BIT 3 = ", BIT3)
            Debug = Concatenate ("BIT 4 = ", BIT4)
            Debug = Concatenate ("BIT 5 = ", BIT5)
            Debug = Concatenate ("BIT 6 = ", BIT6)
            Debug = Concatenate ("BIT 7 = ", BIT7)
        }

        Method (DBG3, 1, NotSerialized)
        {
            XIOD (Arg0)
        }

        Method (DBG4, 1, NotSerialized)
        {
            XMED (Arg0)
        }

        Method (DBG5, 1, NotSerialized)
        {
            XMEC (Arg0)
        }

        Method (DBG6, 1, NotSerialized)
        {
            XIED (Arg0)
        }

        Method (DBG7, 1, NotSerialized)
        {
            XIEC (Arg0)
        }
    }

    Method (XMED, 1, NotSerialized)
    {
        Name (HLP1, "Stops on Event Detected")
        Local0 = Arg0
        Local1 = \_SB.GGRP (Local0)
        Local2 = \_SB.GNMB (Local0)
        Local3 = (\_SB.GADR (Local1, \_SB.PCFG) + (Local2 * 0x08))
        OperationRegion (PDW1, SystemMemory, Local3, 0x04)
        Field (PDW1, AnyAcc, NoLock, Preserve)
        {
            TEMP,   8
        }

        Local4 = 0x0BB8
        Local5 = TEMP /* \XMED.TEMP */
        Local6 = TEMP /* \XMED.TEMP */
        Debug = Concatenate (">>>>>> Timer= ", Local4)
        Debug = Concatenate (">>>>>> Input state= ", Local5)
        While ((Local4 > Zero))
        {
            Local6 = TEMP /* \XMED.TEMP */
            If ((Local5 != Local6))
            {
                Debug = Concatenate (">>>>>> Change detected on= ", Local4)
                Debug = Concatenate (">>>>>> Output state= ", Local6)
                Break
            }

            Local4 -= One
        }
    }

    Method (XMEC, 1, NotSerialized)
    {
        Name (C88L, Zero)
        Name (HLP1, "Stops after two Event cycles")
        Local0 = Arg0
        Local1 = \_SB.GGRP (Local0)
        Local2 = \_SB.GNMB (Local0)
        Local3 = (\_SB.GADR (Local1, \_SB.PCFG) + (Local2 * 0x08))
        OperationRegion (PDW1, SystemMemory, Local3, 0x04)
        Field (PDW1, AnyAcc, NoLock, Preserve)
        {
            TEMP,   8
        }

        Local4 = 0x0BB8
        Local5 = TEMP /* \XMEC.TEMP */
        Local6 = TEMP /* \XMEC.TEMP */
        Debug = Concatenate (">>>>>> Timer= ", Local4)
        Debug = Concatenate (">>>>>> Input state=", Local5)
        While ((Local4 > Zero))
        {
            Local6 = TEMP /* \XMEC.TEMP */
            If ((Local5 != Local6))
            {
                Debug = Concatenate (">>>>>> Change Detected=", Local4)
                Debug = Concatenate (">>>>>> Now=", Local6)
                If ((C88L > One))
                {
                    Debug = Concatenate (">>>>>> Change detected on= ", Local4)
                    Debug = Concatenate (">>>>>> Output state=", Local6)
                    Break
                }

                C88L += One
                Local5 = TEMP /* \XMEC.TEMP */
            }

            Local4 -= One
        }
    }

    Method (XIED, 1, NotSerialized)
    {
        Name (HLP1, "Stops on Event Detected")
        If ((Arg0 > 0xFFFE))
        {
            Debug = Concatenate ("Out of range, limit is 0xFFFF = ", Arg0)
            Return (Zero)
        }

        Local0 = Arg0
        OperationRegion (SPRT, SystemIO, Local0, 0x02)
        Field (SPRT, ByteAcc, Lock, Preserve)
        {
            TEMP,   8
        }

        Local4 = 0x0BB8
        Local5 = TEMP /* \XIED.TEMP */
        Local6 = TEMP /* \XIED.TEMP */
        Debug = Concatenate (">>>>>> Timer= ", Local4)
        Debug = Concatenate (">>>>>> Input state= ", Local5)
        While ((Local4 > Zero))
        {
            Local6 = TEMP /* \XIED.TEMP */
            If ((Local5 != Local6))
            {
                Debug = Concatenate (">>>>>> Change detected on= ", Local4)
                Debug = Concatenate (">>>>>> Output state= ", Local6)
                Break
            }

            Local4 -= One
        }
    }
    
    Method (XIEC, 1, NotSerialized)
    {
        Name (C88L, Zero)
        Name (HLP1, "Stops after two Event cycles")
        If ((Arg0 > 0xFFFE))
        {
            Debug = Concatenate ("Out of range, limit is 0xFFFF = ", Arg0)
            Return (Zero)
        }

        Local0 = Arg0
        OperationRegion (SPRT, SystemIO, Local0, 0x02)
        Field (SPRT, ByteAcc, Lock, Preserve)
        {
            TEMP,   8
        }

        Local4 = 0x0BB8
        Local5 = TEMP /* \XIEC.TEMP */
        Local6 = TEMP /* \XIEC.TEMP */
        Debug = Concatenate (">>>>>> Timer= ", Local4)
        Debug = Concatenate (">>>>>> Input state=", Local5)
        While ((Local4 > Zero))
        {
            Local6 = TEMP /* \XIEC.TEMP */
            If ((Local5 != Local6))
            {
                Debug = Concatenate (">>>>>> Change Detected=", Local4)
                Debug = Concatenate (">>>>>> Now=", Local6)
                If ((C88L > One))
                {
                    Debug = Concatenate (">>>>>> Change detected on= ", Local4)
                    Debug = Concatenate (">>>>>> Output state=", Local6)
                    Break
                }

                C88L += One
                Local5 = TEMP /* \XIEC.TEMP */
            }

            Local4 -= One
        }
    }
    
       Method (XIOD, 1, NotSerialized)
    {
            Debug = "SystemIO Dump = "
            Local0=Arg0
            OperationRegion (SPRT, SystemIO, Local0, 0x40)
            Field (SPRT, ByteAcc, Lock, Preserve)
            {
                TEMP,   512
            }

            Debug = TEMP /* \RMDT.DBG3.TEMP */
    }


}

