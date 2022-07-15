    
DefinitionBlock ("", "SSDT", 2, "Nebula", "TbtCtr18", 0x00000000)
{
    External (_SB_.GGOV, MethodObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GPCB, MethodObj)
    External (_SB_.TBFP, MethodObj) //Thunderbolt Force Power Method
    External (FPGN, FieldUnitObj) //HP ForcePowerGpioNumber (FPGN)
    External (SOHP, FieldUnitObj)
    External (TBSE, FieldUnitObj)
    External (TBTD, MethodObj)
    External (TBTF, MethodObj)
    External (TBTS, FieldUnitObj)

    

    //Thundebolt ACPI Controller Driver Version
    Name (TACD, 0x18)    
    //NameObj: Thunderbolt Allowed By User Status (Zero - Not Allowed, One - Allowed) (TABU)   
    Name (TABU, One)
    //NameObj: Thunderbolt DROM injection is Allowed By User Status (Zero - Not Allowed, One - Allowed) (TDRA)
    Name (TDRA, Zero)
    //NameObj: Thunderbolt DROM Device ID
    Name (TB3D, 0x15788086)
    //NameObj: Thunderbolt DROM Address in RAM
    Name (TBOR, Zero)
    //NameObj: Intel CPU Generation
    Name (IGEN, 0x06)
    //NameObj with Buffer: Thunderbolt Control Registers buffer
    Name (TCRB, Buffer (0x40){}) //64bytes for future
    
    If (LEqual (TABU, One))
    {
        Store ("=============================================", Debug)
        Store ("Nebula Thunderbolt ACPI Controller Loading...", Debug)
        Store ("Build Version:", Debug)
        Store (TACD, Debug)
        Store ("=============================================", Debug)
        Store ("DSDT PATCH: _WAK to ZWAK:", Debug)
        Store ("FIND = 5F57414B", Debug)
        Store ("REPLACE = 5A57414B", Debug)
        Store ("Or add TWAK() call to _WAK method you have,", Debug)
        Store ("and delete _WAK method in this SSDT", Debug)
        Store ("=============================================", Debug)
        Store ("DSDT PATCH: Zbook G3+G4 END OF TINI FOR TBINI:", Debug)
        Store ("FIND = 700D456E642D6F662D54", Debug)
        Store ("REPLACE = 5442494E700D456E6454", Debug)
        Store ("=============================================", Debug)
        Store ("DSDT PATCH: Ellte X2 END OF TINI FOR TBINI:", Debug)
        Store ("FIND = 5442494E414442470D456E6454494E49", Debug)
        Store ("REPLACE = 414442470D456E642D6F662D54494E49 ", Debug)
        Store ("=============================================", Debug)
    }
    
    //General Purpose Event
    Scope (_GPE)
    {
        //After TINI was executed, execute TBIN.
        //This possible only if debug line was patched and replaced
        //The line sends to debug ..End-of-TINI..
        //It could be made with ADBG method, or Debug
        Method (TBIN, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
            Store ("TBIN", Debug) //Thunderbolt Bus Initialization
                     

            //Store 0xFFFFFFFF to Local0
            Store (0xFFFFFF00, Local3)
            Or (Local3, 0xFF, Local3)
            
            Store (\_SB.PCI0.THUN.TEG2, Local0) //Loading Thunderbolt BUS Address to Local0
            Store ("WAIT FOR BRIDGE BUS INI AT:", Debug)
            Store (Local0, Debug)
            OperationRegion (TBPN, SystemMemory, Local0, 0x04)
            Field (TBPN, DWordAcc, Lock, Preserve)
            {
                TBID,   32
            }

            Store (TBID, Local4) //Store Thunderbolt Device and Vendor ID to Local4
            Store (0x2710, Local2) //Set wait timer to 10000 milliseconds
            
            //WAIT FOR BRIDGE BUS INI
            While (LAnd (LGreater (Local2, Zero), LEqual (Local4, Local3)))
            {
                Sleep (One) //Sleep 1 millisecond
                Decrement (Local2) //Subtract from 
                Store (TBID, Local4) //Store Thunderbolt Device and Vendor ID to Local4
            }

            \_SB.PCI0.THUN.TBID (TBID) //Send device and vendor ID to TBID (Thunderbolt Buffer ID)
            Store ("End-of-TBIN", Debug)
            }
            
            Else
            
            {
                Store ("Not a Darwin OS", Debug)
            }
        }

        Method (TDIN, 0, NotSerialized)
        {
            Store ("TDIN", Debug) //Thunderbolt Device Initialization
                        
            //Store 0xFFFFFFFF to Local0
            Store (0xFFFFFF00, Local3)
            Or (Local3, 0xFF, Local3)
            
            Store (\_SB.PCI0.THUN.TEG3, Local0) //Loading Thunderbolt Controller Device Address to Local0
            If (LNotEqual (Local0, Zero)) //If Thunderbolt Controller Device Address Exist, then continue
            {
                OperationRegion (TDPN, SystemMemory, Local0, 0x04)
                Field (TDPN, DWordAcc, Lock, Preserve)
                {
                    TDID,   32
                }

                Store (TDID, Local4)
                Store (0x05DC, Local2)
                While (LAnd (LGreater (Local2, Zero), LEqual (Local4, Local3)))
                {
                    Sleep (One)
                    Decrement (Local2)
                    Store (TDID, Local4)
                }

                \_SB.PCI0.THUN.TBID (TDID)
            }
            Else
            {
                Store ("Thunderbolt Controller Not Initialized", Debug)
            }

            Store ("End-of-TDIN", Debug)
        }
    }




    //Create ACPI Thunderbolt Device
    Scope (_SB.PCI0)
    {
        
        Device (THUN)
        {
            Name (_HID, "THUN6540")  // Hardware Identification - Later it will be set automatically from buffer
            
                        //Connect to buffer with variables
            CreateDWordField (TCRB, Zero, TEG1) //PCH address Register, 0x00, TEG1)
            CreateDWordField (TCRB, 0x04, TEG2) //Thunderbolt Bus Address Register, 0x04, TEG2)
            CreateDWordField (TCRB, 0x08, TEG3) //Thunderbolt Device Bus Address Register, 0x08, TEG3)
            CreateDWordField (TCRB, 0x0C, TEG4) //USB-C Bus Address Register, 0x0C, TEG4)
            CreateDWordField (TCRB, 0x10, TBRA) //Thunderbolt Bridge #1
            CreateDWordField (TCRB, 0x14, NHI1) //NHI memory mapping
            CreateDWordField (TCRB, 0x18, DBF3)
            CreateDWordField (TCRB, 0x1C, DBF4)
            CreateWordField (TCRB, 0x20, WBF1)
            CreateWordField (TCRB, 0x22, WBF2)
            CreateWordField (TCRB, 0x24, WBF3)
            CreateWordField (TCRB, 0x26, WBF4)
            CreateByteField (TCRB, 0x28, TSA1) ////First Time Boot Status (TSA1) (Byte) 
            CreateByteField (TCRB, 0x29, BUSA) //Thunderbolt Bridge Bus Number 
            CreateByteField (TCRB, 0x2A, BBF1)
            CreateByteField (TCRB, 0x2B, BBF2)
            CreateByteField (TCRB, 0x2C, BBF3)
            CreateByteField (TCRB, 0x2D, BBF4)
            CreateByteField (TCRB, 0x2E, BBF5)
            CreateByteField (TCRB, 0x2F, BBF6)
            CreateByteField (TCRB, 0x30, BBF7)
            CreateByteField (TCRB, 0x31, BBF8)
            CreateByteField (TCRB, 0x32, BBF9)
            CreateByteField (TCRB, 0x33, BBFA)
            CreateByteField (TCRB, 0x34, BBFB)
            CreateByteField (TCRB, 0x35, BBFC)
            CreateByteField (TCRB, 0x36, BBFD)
            CreateByteField (TCRB, 0x37, BBFE)
            CreateByteField (TCRB, 0x38, BBFF)
            CreateByteField (TCRB, 0x39, BUF1)
            CreateByteField (TCRB, 0x3A, BUF2)
            CreateByteField (TCRB, 0x3B, BUF3)
            CreateByteField (TCRB, 0x3C, BUF4)
            CreateByteField (TCRB, 0x3D, BUF5)
            CreateByteField (TCRB, 0x3E, BUF6)
            CreateByteField (TCRB, 0x3F, BUF7)

                
            
            Method (TCTR, 1, NotSerialized) //Thunderbolt Control Method
            {
                //Ask (TABU), if the Thunderbolt ForcePower is Allowed by User
                If (LEqual (TABU, One)) 
                {
                    Store ("Thunderbolt is allowed by User", Debug)
                    If (LEqual (Arg0, One))
                    {
                        If (LEqual (\_SB.GGOV (FPGN), Zero))
                        {
                            //If Thunderbolt is not enabled, 
                            //Then enable Thunderbolt
                            Store ("Thunderbolt ForcePower Enable", Debug)
                            \_SB.TBFP (Arg0)
                        }
                        Else
                        {
                            //If Thunderbolt is enabled, 
                            //Then do nothing
                            Store ("Already powered", Debug)
                        }
                    }
                    TBPE ()
                }
                Else
                {
                    Store ("Thunderbolt not allowed by User", Debug)
                }

                //Wait for 100-500 milliseconds to tell Pcie Initialization Driver That Hotplug was Happen
                Store (0xFA, Local0)
                While (LGreater (Local0, Zero))
                {
                    Sleep (One)
                    Decrement (Local0)
                }

                // Call for Fake Thunderbolt Hotplug
                FTHP ()
                //This will shutdown thunderbolt device if nothing was connected at early OS boot
                //And will prevent unexpected reboot on PS0 and kernel Panic after wake
            }

            Method (FTHP, 0, NotSerialized)
            {
                
                //Imitate HotPlug Event for TBT Efi driver reaction
                //This will disable all E4C, YTBT, XTBT actions
                If (LAnd (LEqual (SOHP, One), LEqual (TABU, One)))
                {
                    Store ("FakeThunderboltHotPlug", Debug)
                    //SOHP - Enable Force Hotplug (SMI on Hot Plug)
                    Store (Zero, SOHP)
                }
            }

            Method (TBPE, 0, NotSerialized)
            {
                
                
                //If that is first system boot, and thunderbolt is allowed by user
                If (LAnd (LEqual (^TSA1, Zero), LEqual (TABU, One))) 
                {
                    Store ("TBPE", Debug)
                                        
                    //Generate PCH PCI Address
                    Store ("Thunderbolt Bridge Pcie Bus Enumerator", Debug)
                    
                    Store (\_SB.PCI0.GPCB (), Local0) //PCI bus address to Local0, this Local0 will be used later
                    Store (Local0, Local1) // Bus address to Local1
                    Add (Local1, ShiftLeft (TBTD (TBSE), 0x0F), Local1)
                    Add (Local1, ShiftLeft (TBTF (TBSE), 0x0C), Local1)
                    Store (Local1, ^TEG1) //Generation of PCH PCI Address is complete and stored to TEG1
                    
                    //Map RAM to ACPI, Read content of PCH PCI Config
                    OperationRegion (TPBS, SystemMemory, Local1, 0x1A)
                    Field (TPBS, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x19), 
                        BBUS,   8 // The Thunderbolt Bus bus number
                    }
                    
                    //Thunderbolt data exchange protocol is the same that is used in DMI
                    //So Thunderbolt is SOC Hub controller

                    Store (BBUS, Local2) //Store Thunderbolt Bus Number to Local2
                    Store (Local2, ^BUSA) //Store Thunderbolt Bus Number to BUSA for wake check
                    Multiply (Local2, 0x00100000, Local2) //Multiply Bus number to get address inside of PCI config
                    Add (Local2, Local0, Local2) //Store TBT Bus address inside of preallocated PCI space
                    Store (Local2, ^TEG2) //Store complete Thunderbolt Bus Address into register TEG2
                    Store ("Thunderbolt Bus Address=", Debug) //Debug address
                    Store (Local2, Debug) //Debug address
                    Store (One, ^TSA1) //Update Os Boot detected register, 
                                      //TSA1 set to One, as system is at end of PCI _INI stage
                }
            }

            Method (TDPE, 0, NotSerialized)
            {
                Store ("TDPE", Debug)

                Store (\_SB.PCI0.GPCB (), Local0)  //PCI bus address to Local0, this Local0 will be used later
                Store (^TEG2, Local1) //Thunderbolt Bus Address into Local1
                
                //Map RAM to ACPI, Read content of Thunderbolt Bus PCI Config
                OperationRegion (TPDS, SystemMemory, Local1, 0x1A)
                Field (TPDS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x19), 
                    TDUS,   8  // The Thunderbolt Device bus number
                               // At G3 the value is 6, at g4 is 5 = F07 or F05
                }

                //If the BUS number is correct, then create a Thunderbolt Controller Device Address
                If (LAnd (LNotEqual (TDUS, Zero), LNotEqual (TDUS, 0xFF)))
                {
                    Store (TDUS, Local2) // The Thunderbolt Device bus number to Local2
                    Multiply (Local2, 0x00100000, Local2) //Multiply Bus number to get address inside of PCI config
                    Add (Local2, Local0, Local2) //Store TBT Controller address inside of preallocated PCI space
                    Store (Local2, ^TEG3) //Store Thunderbolt Controller Bus address to TEG3
                    Store ("Thunderbolt Controller Device Address=", Debug)
                    Store (Local2, Debug)
                    
                 }
                

                //If the BUS number is correct, then create a Thunderbolt Bridge #1 
                If (LAnd (LNotEqual (TDUS, Zero), LNotEqual (TDUS, 0xFF)))
                {
                    //Map RAM to ACPI, Read content of Thunderbolt HUB Config
                    OperationRegion (TBB1, SystemMemory, Local2, 0x1A)
                    Field (TBB1, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x19), 
                            TRB1,   8  // Thunderbolt Bridge #1 bus number
                        }
                                            
                    Store (TRB1, Local3) // The Thunderbolt Bridge #1 bus number to Local2
                    Multiply (Local3, 0x00100000, Local3) //Multiply Bus number to get address inside of PCI config
                    Add (Local3, Local0, Local3) //Store TBT Bridge #1 address inside of preallocated PCI space
                    Store (Local3, TBRA)
                    Store ("Thunderbolt Bridge #1 Address=", Debug)
                    Store (Local3, Debug)
                 }  
                

                //If the BUS number is correct, then create a NHI Operation Memory Region
                If (LAnd (LNotEqual (TDUS, Zero), LNotEqual (TDUS, 0xFF)))
                {
                    //Map RAM to ACPI, Read content of Thunderbolt Controller
                    OperationRegion (NHIB, SystemMemory, Local3, 0x14)
                    Field (NHIB, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x10), 
                            NHRR,   32  // NHI Operation Memory Region
                        }
                                            
                    Store (NHRR, Local4) // The NHI Operation Memory Region to Local4
                    Store (Local4, ^NHI1) //Store NHI Operation Memory Region to NHI1
                    Store ("NHI Operation Memory Region=", Debug)
                    Store (Local4, Debug)
                }
                
                //If the BUS number is correct, then create a USB-C Controller Device Address
                If (LAnd (LNotEqual (TDUS, Zero), LNotEqual (TDUS, 0xFF)))
                {
                    Add (Local2, 0x10000, Local5) //Create address of Thunderbolt HUB Device
                    
                    //Map RAM to ACPI, Read content of Thunderbolt HUB Config
                    OperationRegion (USDS, SystemMemory, Local5, 0x1A)
                    Field (USDS, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x19), 
                            USUS,   8  // The USB-C bus number
                        }
                                            
                    Store (USUS, Local6) // The Thunderbolt Device bus number to Local2
                    Multiply (Local6, 0x00100000, Local6) //Multiply Bus number to get address inside of PCI config
                    Add (Local6, Local0, Local6) //Store TBT USB-C address inside of preallocated PCI space
                    Store (Local6, ^TEG4) //Store Thunderbolt USB-C Bus address to TEG3
                    Store ("Thunderbolt USB-C Device Address=", Debug)
                    Store (Local6, Debug)
                 }
                Else
                {
                    Store ("Thunderbolt controller is not initialized", Debug)
                }
                
                    Store ("End-of-TDPE", Debug)            
            }        
                    
            Method (TBAC, 0, NotSerialized)
            {

                    //Map RAM to ACPI, Read content of PCH PCI Config
                    Store (^TEG1, Local0)
                    OperationRegion (TPBA, SystemMemory, Local0, 0x1A)
                    Field (TPBA, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x19), 
                        TBSA,   8 // The Thunderbolt Bridge bus number
                    }
                    
                    //Store bus number current to Local1 and bus number from boot to Local2
                    Store (TBSA, Local1)
                    Store (^BUSA, Local2)
                    
                    //Compare current bus number with the one from boot
                    If (LNotEqual (Local1, Local2))
                    {
                        Store ("TBAC Failed", Debug)
                        Store (Zero, ^TSA1)
                        TBPE ()
                    }
                    Else
                    {
                        Store ("TBAC Passed", Debug)
                    }

                
            }

                

            Method (TBID, 1, NotSerialized)
            {
                //Identify Thunderbolt device ID and Debug its name.
                
                Store (0xFFFFFF00, Local0)
                Or (Local0, 0xFF, Local0)
                
                
                If (LNotEqual (Arg0, Local0))
                {
                    Switch (ToInteger (Arg0))
                    {
                        Case (0x15D38086)
                        {
                            Store ("JHL6540 Thunderbolt 3 Bridge", Local1)
                        }
                        Case (0x15D28086)
                        {
                            Store ("JHL6540 Thunderbolt 3 NHI", Local1)
                        }
                        Case (0x15788086)
                        {
                            Store ("DSL6540 Thunderbolt 3 Bridge", Local1)
                        }
                        Case (0x15778086)
                        {
                            Store ("DSL6540 Thunderbolt 3 NHI", Local1)
                        }
                        Default
                        {
                            Store ("Unknown Device", Local1)
                        }
                    }
                }
               Else
               {
                        Store ("No Thunderbolt device found", Local1)
               }
                    
                Store ("Thunderbolt Device is:", Debug)
                Store (Local1, Debug)
                Return (Local1)
            }

            Method (TING, 0, NotSerialized)
            {
                If (LAnd (LEqual (TB3D, 0x15778086), LEqual (TDRA, One)))
                {
                    Store (Buffer (0x69){}, Local0)
                    OperationRegion (TROM, SystemMemory, TBOR, 0x69)
                    Field (TROM, DWordAcc, Lock, Preserve)
                    {
                        DROM,   832
                    }

                    Store (Local0, DROM)
                }
            }
            
            Method (UNOS, 0, NotSerialized)
            {
                Store ("Thunderbolt ACPI Device Initialized", Debug)
                Store (One, SOHP)
                \_SB.TBFP (Zero)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (_OSI ("Darwin"))
                {
                Store ("Thunderbolt ACPI Device Initialized", Debug)
                TDPE ()
                }
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If (_OSI ("Darwin"))
                {
                Store ("Thunderbolt ACPI Device _PS0", Debug)
                
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                If (_OSI ("Darwin"))
                {
                Store ("Thunderbolt ACPI Device _PS3", Debug)
                }
            }
            
            Method (TDBG, 0, Serialized)  // _PS3: Power State 3
            {
                Store ("Thunderbolt Debug", Debug)
                TDPE()
                
                OperationRegion (NHIB, SystemMemory, Add (NHI1, 0x00039858), 0x0100)
                Field (NHIB, AnyAcc, NoLock, Preserve)
                        {
                            CIOR,   32, 
                            Offset (0xB8), 
                            ISTA,   32, 
                            Offset (0xEC), 
                            ICME,   32
                        }
                DEBUG=CIOR
                DEBUG=ISTA
                DEBUG=ICME
                
            }            
            
        }
    }

    //Check if system compatible with Thunderbolt
    If (LEqual (TBTS, One))
    {
        
        If (_OSI ("Darwin"))
        {
        
        // If Thunderbolt DROM injection is Allowed By User Status (Then Patch RAM)
        If (LEqual (TDRA, One))
        {
            //Dangerous step
            \_SB.PCI0.THUN.TING ()
        }
        
        //Call to Thunderbolt ForcePower method
        \_SB.PCI0.THUN.TCTR (One)

        }
        
    }

    Method (TWAK, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
        //Check if bus is same
        \_SB.PCI0.THUN.TBAC ()
        //Call (TCTR) to ForcePower Enable
        \_SB.PCI0.THUN.TCTR (One)

        }
    }
}

