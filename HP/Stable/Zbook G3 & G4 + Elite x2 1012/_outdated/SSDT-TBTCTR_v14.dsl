/*
 * Copyright 2022 EdwardGeonity (EdwardGeo, BigguyGeo)
 * All Rights Reserved.
 *
 * This program is distributed in the hope that it will be useful, 
 * and with hope to future modifications for better and universal compatibility.
 * But WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * This software was tested only at HP Zbook G3, HP Zbook G4, HP Ellite 1012 X2, Dell XPS 15 9575
 * Usage with other devices not confirmed and not safety granted. 
 * By using this software, you are aggree to be responsible to any 
 * By using this software, you agree to be responsible for any malfunction 
 * that the program may cause to your hardware or operating system. 
 * The developer is not responsible for any consequences of use.
 * Copyright and Related Rights. A Work made available under CC0 may be
 * protected by copyright and related or neighboring rights ("Copyright and
 * Related Rights"). Copyright and Related Rights include, but are not
 * limited to, the following:
 * 
 *   i. the right to reproduce, adapt, distribute, perform, display,
 *      communicate, and translate a Work;
 *  ii. moral rights retained by the original author(s) and/or performer(s);
 * iii. publicity and privacy rights pertaining to a person's image or
 *      likeness depicted in a Work;
 *  iv. rights protecting against unfair competition in regards to a Work,
 *      subject to the limitations in paragraph 4(a), below;
 *   v. rights protecting the extraction, dissemination, use and reuse of data
 *      in a Work;
 *  vi. database rights (such as those arising under Directive 96/9/EC of the
 *      European Parliament and of the Council of 11 March 1996 on the legal
 *      protection of databases, and under any national implementation
 *      thereof, including any amended or successor version of such
 *      directive); and
 * vii. other similar, equivalent or corresponding rights throughout the
 *      world based on applicable law or treaty, and any national
 *     implementations thereof.
 *
 */
 


DefinitionBlock ("", "SSDT", 2, "Nebula", "TbtCtr14", 0x00000000)
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
    Name (TACD, 0x14)
    
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
    Name (TCRB, Buffer (0x12){})
    
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
            Store ("TBIN", Debug) //Thunderbolt Bus Initialization
            
            
            //Connect to buffer with variables
            CreateDWordField (TCRB, Zero, TEG1) //PCH address Register, 0x00, TEG1)
            CreateDWordField (TCRB, 0x04, TEG2) //Thunderbolt Bridge Bus Address Register, 0x04, TEG2)
            CreateDWordField (TCRB, 0x08, TEG3) //Thunderbolt NHI0 Bus Address Register, 0x08, TEG3)
            CreateDWordField (TCRB, 0x0C, TEG4) //USB-C Bus Address Register, 0x0C, TEG4)
            CreateByteField (TCRB, 0x10, TSA1) //First Time Boot Status (TSA1) (Byte)       
            CreateByteField (TCRB, 0x11, TSA2) //Reserved for future (Byte)
                     

            //Store 0xFFFFFFFF to Local0
            Store (0xFFFFFF00, Local3)
            Or (Local3, 0xFF, Local3)
            
            Store (TEG2, Local0) //Loading Thunderbolt BUS Address to Local0
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

        Method (TDIN, 0, NotSerialized)
        {
            Store ("TDIN", Debug) //Thunderbolt Device Initialization
            
            //Connect to buffer with variables
            CreateDWordField (TCRB, Zero, TEG1) //PCH address Register, 0x00, TEG1)
            CreateDWordField (TCRB, 0x04, TEG2) //Thunderbolt Bridge Bus address Register, 0x04, TEG2)
            CreateDWordField (TCRB, 0x08, TEG3) //Thunderbolt NHI0 Bus address Register, 0x08, TEG3)
            CreateDWordField (TCRB, 0x0C, TEG4) //USB-C Bus address Register, 0x0C, TEG4)
            CreateByteField (TCRB, 0x10, TSA1) //First Time Boot Status (TSA1) (Byte)       
            CreateByteField (TCRB, 0x11, TSA2) //Reserved for future (Byte)
            
            //Store 0xFFFFFFFF to Local0
            Store (0xFFFFFF00, Local3)
            Or (Local3, 0xFF, Local3)
            
            Store (TEG3, Local0) //Loading Thunderbolt Controller Device Address to Local0
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
                
                //Connect to buffer with variables
                CreateByteField (TCRB, 0x10, TSA1) //First Time Boot Status (TSA1) (Byte)       
                CreateByteField (TCRB, 0x11, TSA2) //Reserved for future (Byte)
                
                //If that is first system boot, and thunderbolt is allowed by user
                If (LAnd (LEqual (TSA1, Zero), LEqual (TABU, One))) 
                {
                    Store ("TBPE", Debug)
                    
                    //Connect to buffer with variables
                    CreateDWordField (TCRB, Zero, TEG1) //PCH address Register, 0x00, TEG1)
                    CreateDWordField (TCRB, 0x04, TEG2) //Thunderbolt Bridge Bus address Register, 0x04, TEG2)
                    CreateDWordField (TCRB, 0x08, TEG3) //Thunderbolt NHI0 Bus address Register, 0x08, TEG3)
                    CreateDWordField (TCRB, 0x0C, TEG4) //USB-C Bus address Register, 0x0C, TEG4)
                    
                    
                    //Generate PCH PCI Address
                    Store ("Thunderbolt Bridge Pcie Bus Enumerator", Debug)
                    
                    Store (\_SB.PCI0.GPCB (), Local0) //PCI bus address to Local0, this Local0 will be used later
                    Store (Local0, Local1) // Bus address to Local1
                    Add (Local1, ShiftLeft (TBTD (TBSE), 0x0F), Local1)
                    Add (Local1, ShiftLeft (TBTF (TBSE), 0x0C), Local1)
                    Store (Local1, TEG1) //Generation of PCH PCI Address is complete and stored to TEG1
                    
                    //Map RAM to ACPI, Read content of PCH PCI Config
                    OperationRegion (TPBS, SystemMemory, Local1, 0x1A)
                    Field (TPBS, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x19), 
                        BBUS,   8 // The Thunderbolt Bridge bus number
                    }
                    
                    //Thunderbolt data exchange protocol is the same that is used in DMI
                    //So Thunderbolt is SOC Hub controller

                    Store (BBUS, Local2) //Store Thunderbolt Bus Number to Local2
                    Multiply (Local2, 0x00100000, Local2) //Multiply Bus number to get address inside of PCI config
                    Add (Local2, Local0, Local2) //Store TBT Bridge address inside of preallocated PCI space
                    Store (Local2, TEG2) //Store complete Thunderbolt Bridge Address into register TEG2
                    Store ("Thunderbolt Bridge Address=", Debug) //Debug address
                    Store (Local2, Debug) //Debug address
                    Store (One, TSA1) //Update Os Boot detected register, 
                                      //TSA1 set to One, as system is at end of PCI _INI stage
                }
            }

            Method (TDPE, 0, NotSerialized)
            {
                Store ("TDPE", Debug)

                //Connect to buffer with variables
                CreateDWordField (TCRB, Zero, TEG1) //PCH address Register, 0x00, TEG1)
                CreateDWordField (TCRB, 0x04, TEG2) //Thunderbolt Bridge Bus address Register, 0x04, TEG2)
                CreateDWordField (TCRB, 0x08, TEG3) //Thunderbolt NHI0 Bus address Register, 0x08, TEG3)
                CreateDWordField (TCRB, 0x0C, TEG4) //USB-C Bus address Register, 0x0C, TEG4)
                CreateByteField (TCRB, 0x10, TSA1) //First Time Boot Status (TSA1) (Byte)       
                CreateByteField (TCRB, 0x11, TSA2) //Reserved for future (Byte)
                
                Store (\_SB.PCI0.GPCB (), Local0)  //PCI bus address to Local0, this Local0 will be used later
                Store ("Thunderbolt Device Pcie Bus Enumerator", Debug)
                Store (TEG2, Local1) //Thunderbolt Bridge Address into Local1
                
                //Map RAM to ACPI, Read content of Thunderbolt Bridge PCI Config
                OperationRegion (TPDS, SystemMemory, Local1, 0x1A)
                Field (TPDS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x19), 
                    TDUS,   8  // The Thunderbolt Device bus number
                }

                //If the BUS number is correct, then create a Thunderbolt Controller Device Address
                If (LAnd (LNotEqual (TDUS, Zero), LNotEqual (TDUS, 0xFF)))
                {
                    Store (TDUS, Local2) // The Thunderbolt Device bus number to Local2
                    Multiply (Local2, 0x00100000, Local2) //Multiply Bus number to get address inside of PCI config
                    Add (Local2, Local0, Local2) //Store TBT Controller address inside of preallocated PCI space
                    Store (Local2, TEG3) //Store Thunderbolt Controller Bus address to TEG3
                    Store ("Thunderbolt Controller Device Address=", Debug)
                    Store (Local2, Debug)
                 }
                
                //If the BUS number is correct, then create a USB-C Controller Device Address
                If (LAnd (LNotEqual (TDUS, Zero), LNotEqual (TDUS, 0xFF)))
                {
                    Add (Local2, 0x1000, Local3) //Create address of Thunderbolt HUB Device
                    
                    //Map RAM to ACPI, Read content of Thunderbolt HUB Config
                    OperationRegion (USDS, SystemMemory, Local3, 0x1A)
                    Field (USDS, AnyAcc, NoLock, Preserve)
                        {
                            Offset (0x19), 
                            USUS,   8  // The USB-C bus number
                        }
                                            
                    Store (USUS, Local4) // The Thunderbolt Device bus number to Local2
                    Multiply (Local4, 0x00100000, Local4) //Multiply Bus number to get address inside of PCI config
                    Add (Local4, Local0, Local4) //Store TBT USB-C address inside of preallocated PCI space
                    Store (Local4, TEG4) //Store Thunderbolt USB-C Bus address to TEG3
                    Store ("Thunderbolt USB-C Device Address=", Debug)
                    Store (Local4, Debug)
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
                        Case (0x00008086)
                        {
                            Store ("0000", Local1)
                        }
                        Case (0x00008086)
                        {
                            Store ("0000", Local1)
                        }
                        Default
                        {
                            Store ("Unknown Thunderbolt Device", Local1)
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

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store ("Thunderbolt ACPI Device Initialized", Debug)
                
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                Store ("Thunderbolt ACPI Device _PS0", Debug)
                TDPE ()
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                Store ("Thunderbolt ACPI Device _PS3", Debug)
            }
        }
    }

    //Check if system compatible with Thunderbolt
    If (LEqual (TBTS, One))
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

    Method (TWAK, 0, NotSerialized)
    {
        //Call (TCTR) to ForcePower Enable
        \_SB.PCI0.THUN.TCTR (One)
    }
}

