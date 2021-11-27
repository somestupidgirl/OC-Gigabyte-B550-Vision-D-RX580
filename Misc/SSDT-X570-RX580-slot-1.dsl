/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/sunneva/oc/EFI/OC/ACPI/SSDT-X570-RX580-slot-1.aml, Fri Nov 26 16:48:31 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000025A (602)
 *     Revision         0x01
 *     Checksum         0x08
 *     OEM ID           "RLJ"
 *     OEM Table ID     "X570R580"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 1, "RLJ", "X570R580", 0x00000000)
{
    External (_SB_.PCI0.GPP8, DeviceObj)
    External (_SB_.PCI0.GPP8.D012, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    If (_OSI ("Darwin"))
    {
        Scope (_SB.PCI0.GPP8)
        {
            Scope (D012)
            {
                Name (_STA, Zero)  // _STA: Status
            }

            Device (EGP0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (EGP1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (GFX0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x0A)
                                {
                                    "built-in", 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }, 

                                    "AAPL,slot-name", 
                                    Buffer (0x07)
                                    {
                                        "Slot 1"
                                    }, 

                                    "model", 
                                    Buffer (0x12)
                                    {
                                        "AMD Radeon RX-580"
                                    }, 

                                    "name", 
                                    Buffer (0x12)
                                    {
                                        "AMD Radeon RX-580"
                                    }, 

                                    "hda-gfx", 
                                    Buffer (0x0A)
                                    {
                                        "onboard-1"
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Return (0x80000002)
                    }

                    Device (HDAU)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        OperationRegion (HDAH, PCI_Config, Zero, 0x40)
                        Field (HDAH, ByteAcc, NoLock, Preserve)
                        {
                            VID0,   16, 
                            DID0,   16
                        }

                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x0E)
                                {
                                    "built-in", 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }, 

                                    "AAPL,slot-name", 
                                    Buffer (0x07)
                                    {
                                        "Slot 1"
                                    }, 

                                    "layout-id", 
                                    Buffer (0x04)
                                    {
                                         0x01, 0x00, 0x00, 0x00                           // ....
                                    }, 

                                    "name", 
                                    Buffer (0x1B)
                                    {
                                        "AMD Radeon RX-580 HD-Audio"
                                    }, 

                                    "model", 
                                    Buffer (0x20)
                                    {
                                        "AMD Radeon RX-580 HDMI HD-Audio"
                                    }, 

                                    "device_type", 
                                    Buffer (0x16)
                                    {
                                        "Multimedia Controller"
                                    }, 

                                    "hda-gfx", 
                                    Buffer (0x0A)
                                    {
                                        "onboard-1"
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Return (0x80000002)
                    }
                }
            }
        }
    }
}

