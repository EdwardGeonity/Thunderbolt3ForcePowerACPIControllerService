
DefinitionBlock ("", "SSDT", 2, "Nebula", "_WAK", 0x00000000)
{
    External (TWAK, MethodObj)
    External (ZWAK, MethodObj)

    Method (_WAK, 1, NotSerialized)
    {
        //Call TWAK To ForcePower Enable
        TWAK()
        
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        Store (ZWAK (Arg0), Local0)
        Return (Local0)
    }
}

