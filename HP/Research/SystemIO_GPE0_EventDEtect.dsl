/*
Currently the code is slow and requaire 30-40% of cpu to execute


*/
DefinitionBlock ("", "SSDT", 2, "HSEVWD", "HSpEVW_7", 0x00000000)
{
    External (PMBS, MethodObj)

    If (CondRefOf (\PMBS))
    {
        Name (GP_E, Zero)
        GP_E = (\PMBS () + 0x80)
    }

    OperationRegion (EVAS, SystemIO, GP_E, 0x1E)
    Field (EVAS, ByteAcc, NoLock, Preserve)
    {
        Offset (0x09), 
        X9B0,   1, 
        X9B1,   1, 
        X9B2,   1, 
        X9B3,   1, 
        X9B4,   1, 
        X9B5,   1, 
        X9B6,   1, 
        X9B7,   1, 
        Offset (0x0C), 
        XCB0,   1, 
        XCB1,   1, 
        XCB2,   1, 
        XCB3,   1, 
        XCB4,   1, 
        XCB5,   1, 
        XCB6,   1, 
        XCB7,   1, 
        Offset (0x11), 
        Z1B0,   1, 
        Z1B1,   1, 
        Z1B2,   1, 
        Z1B3,   1, 
        Z1B4,   1, 
        Z1B5,   1, 
        Z1B6,   1, 
        Z1B7,   1, 
        Offset (0x19)
    }

    Method (XEDZ, 0, Serialized)
    {
        If ((X9B4 == One))
        {
            Debug = "EventDetected:(X9B4=TBT_HOTP)"
            Return (0x80)
        }

        If ((XCB1 == One))
        {
            Debug = "EventDetected:(XCB1=TBT_FPEN)"
            Return (0x81)
        }

        If ((Z1B7 == Zero))
        {
            Debug = "EventDetected:(Z1B7=CYCLE)"
            Return (0xFF)
        }

        Return (Zero)
    }

    Method (XEDC, 1, Serialized)
    {
        Switch (ToInteger (Arg0))
        {
            Case (0x80)
            {
                Debug = "X9B4 EventDetected (Tunderbolt Hotplug 0x10 is the second)>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            }
            Case (0x81)
            {
                Debug = "XCB1 EventDetected (Tunderbolt Power 0x02 is the first reverse at unplug)>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            }
            Case (0xFF)
            {
                Debug = " EventDetected >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            }

        }
    }

    Method (RN8F, 1, NotSerialized)
    {
        Local0 = Zero
        Local2 = 0x12
        While ((Arg0 == One))
        {
            If ((Local0 > 0x5000))
            {
                Local1 = XEDZ ()
                If ((Local1 != Zero))
                {
                    XEDC (Local1)
                    Break
                }

                If ((Local2 == Zero))
                {
                    Break
                }

                Local2--
                Local0 = Zero
            }

            Local0++
        }
    }

    Method (RN8N, 0, NotSerialized)
    {
        While (One)
        {

            Local1 = XEDZ ()
            If ((Local1 == Zero))
            {
                RN8F (One)
                Break
            }

            Sleep (0x01F4)
        }
    }

    Method (ZXZX, 0, NotSerialized)
    {
        RN8F (One)
    }

    If (One){}
}
