/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLzfZSHM.aml, Mon Aug  1 16:10:44 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000AF8C (44940)
 *     Revision         0x02
 *     Checksum         0x3C
 *     OEM ID           "GpeDBG"
 *     OEM Table ID     "GpeDBG"
 *     OEM Revision     0x00020000 (131072)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "GpeDBG", "GpeDBG", 0x00020000)
{
    /*
     * iASL Warning: There were 254 external control methods found during
     * disassembly, but only 510 were resolved (4294967040 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_GPE._E01, MethodObj)    // 0 Arguments
    External (_GPE._E02, MethodObj)    // 0 Arguments
    External (_GPE._E03, MethodObj)    // 0 Arguments
    External (_GPE._E04, MethodObj)    // 0 Arguments
    External (_GPE._E05, MethodObj)    // 0 Arguments
    External (_GPE._E06, MethodObj)    // 0 Arguments
    External (_GPE._E07, MethodObj)    // 0 Arguments
    External (_GPE._E08, MethodObj)    // 0 Arguments
    External (_GPE._E09, MethodObj)    // 0 Arguments
    External (_GPE._E0A, MethodObj)    // 0 Arguments
    External (_GPE._E0B, MethodObj)    // 0 Arguments
    External (_GPE._E0C, MethodObj)    // 0 Arguments
    External (_GPE._E0D, MethodObj)    // 0 Arguments
    External (_GPE._E0E, MethodObj)    // 0 Arguments
    External (_GPE._E0F, MethodObj)    // 0 Arguments
    External (_GPE._E10, MethodObj)    // 0 Arguments
    External (_GPE._E11, MethodObj)    // 0 Arguments
    External (_GPE._E12, MethodObj)    // 0 Arguments
    External (_GPE._E13, MethodObj)    // 0 Arguments
    External (_GPE._E14, MethodObj)    // 0 Arguments
    External (_GPE._E15, MethodObj)    // 0 Arguments
    External (_GPE._E16, MethodObj)    // 0 Arguments
    External (_GPE._E17, MethodObj)    // 0 Arguments
    External (_GPE._E18, MethodObj)    // 0 Arguments
    External (_GPE._E19, MethodObj)    // 0 Arguments
    External (_GPE._E1A, MethodObj)    // 0 Arguments
    External (_GPE._E1B, MethodObj)    // 0 Arguments
    External (_GPE._E1C, MethodObj)    // 0 Arguments
    External (_GPE._E1D, MethodObj)    // 0 Arguments
    External (_GPE._E1E, MethodObj)    // 0 Arguments
    External (_GPE._E1F, MethodObj)    // 0 Arguments
    External (_GPE._E20, MethodObj)    // 0 Arguments
    External (_GPE._E21, MethodObj)    // 0 Arguments
    External (_GPE._E22, MethodObj)    // 0 Arguments
    External (_GPE._E23, MethodObj)    // 0 Arguments
    External (_GPE._E24, MethodObj)    // 0 Arguments
    External (_GPE._E25, MethodObj)    // 0 Arguments
    External (_GPE._E26, MethodObj)    // 0 Arguments
    External (_GPE._E27, MethodObj)    // 0 Arguments
    External (_GPE._E28, MethodObj)    // 0 Arguments
    External (_GPE._E29, MethodObj)    // 0 Arguments
    External (_GPE._E2A, MethodObj)    // 0 Arguments
    External (_GPE._E2B, MethodObj)    // 0 Arguments
    External (_GPE._E2C, MethodObj)    // 0 Arguments
    External (_GPE._E2D, MethodObj)    // 0 Arguments
    External (_GPE._E2E, MethodObj)    // 0 Arguments
    External (_GPE._E2F, MethodObj)    // 0 Arguments
    External (_GPE._E30, MethodObj)    // 0 Arguments
    External (_GPE._E31, MethodObj)    // 0 Arguments
    External (_GPE._E32, MethodObj)    // 0 Arguments
    External (_GPE._E33, MethodObj)    // 0 Arguments
    External (_GPE._E34, MethodObj)    // 0 Arguments
    External (_GPE._E35, MethodObj)    // 0 Arguments
    External (_GPE._E36, MethodObj)    // 0 Arguments
    External (_GPE._E37, MethodObj)    // 0 Arguments
    External (_GPE._E38, MethodObj)    // 0 Arguments
    External (_GPE._E39, MethodObj)    // 0 Arguments
    External (_GPE._E3A, MethodObj)    // 0 Arguments
    External (_GPE._E3B, MethodObj)    // 0 Arguments
    External (_GPE._E3C, MethodObj)    // 0 Arguments
    External (_GPE._E3D, MethodObj)    // 0 Arguments
    External (_GPE._E3E, MethodObj)    // 0 Arguments
    External (_GPE._E3F, MethodObj)    // 0 Arguments
    External (_GPE._E40, MethodObj)    // 0 Arguments
    External (_GPE._E41, MethodObj)    // 0 Arguments
    External (_GPE._E42, MethodObj)    // 0 Arguments
    External (_GPE._E43, MethodObj)    // 0 Arguments
    External (_GPE._E44, MethodObj)    // 0 Arguments
    External (_GPE._E45, MethodObj)    // 0 Arguments
    External (_GPE._E46, MethodObj)    // 0 Arguments
    External (_GPE._E47, MethodObj)    // 0 Arguments
    External (_GPE._E48, MethodObj)    // 0 Arguments
    External (_GPE._E49, MethodObj)    // 0 Arguments
    External (_GPE._E4A, MethodObj)    // 0 Arguments
    External (_GPE._E4B, MethodObj)    // 0 Arguments
    External (_GPE._E4C, MethodObj)    // 0 Arguments
    External (_GPE._E4D, MethodObj)    // 0 Arguments
    External (_GPE._E4E, MethodObj)    // 0 Arguments
    External (_GPE._E4F, MethodObj)    // 0 Arguments
    External (_GPE._E50, MethodObj)    // 0 Arguments
    External (_GPE._E51, MethodObj)    // 0 Arguments
    External (_GPE._E52, MethodObj)    // 0 Arguments
    External (_GPE._E53, MethodObj)    // 0 Arguments
    External (_GPE._E54, MethodObj)    // 0 Arguments
    External (_GPE._E55, MethodObj)    // 0 Arguments
    External (_GPE._E56, MethodObj)    // 0 Arguments
    External (_GPE._E57, MethodObj)    // 0 Arguments
    External (_GPE._E58, MethodObj)    // 0 Arguments
    External (_GPE._E59, MethodObj)    // 0 Arguments
    External (_GPE._E5A, MethodObj)    // 0 Arguments
    External (_GPE._E5B, MethodObj)    // 0 Arguments
    External (_GPE._E5C, MethodObj)    // 0 Arguments
    External (_GPE._E5D, MethodObj)    // 0 Arguments
    External (_GPE._E5E, MethodObj)    // 0 Arguments
    External (_GPE._E5F, MethodObj)    // 0 Arguments
    External (_GPE._E60, MethodObj)    // 0 Arguments
    External (_GPE._E61, MethodObj)    // 0 Arguments
    External (_GPE._E62, MethodObj)    // 0 Arguments
    External (_GPE._E63, MethodObj)    // 0 Arguments
    External (_GPE._E64, MethodObj)    // 0 Arguments
    External (_GPE._E65, MethodObj)    // 0 Arguments
    External (_GPE._E66, MethodObj)    // 0 Arguments
    External (_GPE._E67, MethodObj)    // 0 Arguments
    External (_GPE._E68, MethodObj)    // 0 Arguments
    External (_GPE._E69, MethodObj)    // 0 Arguments
    External (_GPE._E6A, MethodObj)    // 0 Arguments
    External (_GPE._E6B, MethodObj)    // 0 Arguments
    External (_GPE._E6C, MethodObj)    // 0 Arguments
    External (_GPE._E6D, MethodObj)    // 0 Arguments
    External (_GPE._E6E, MethodObj)    // 0 Arguments
    External (_GPE._E6F, MethodObj)    // 0 Arguments
    External (_GPE._E70, MethodObj)    // 0 Arguments
    External (_GPE._E71, MethodObj)    // 0 Arguments
    External (_GPE._E72, MethodObj)    // 0 Arguments
    External (_GPE._E73, MethodObj)    // 0 Arguments
    External (_GPE._E74, MethodObj)    // 0 Arguments
    External (_GPE._E75, MethodObj)    // 0 Arguments
    External (_GPE._E76, MethodObj)    // 0 Arguments
    External (_GPE._E77, MethodObj)    // 0 Arguments
    External (_GPE._E78, MethodObj)    // 0 Arguments
    External (_GPE._E79, MethodObj)    // 0 Arguments
    External (_GPE._E7A, MethodObj)    // 0 Arguments
    External (_GPE._E7B, MethodObj)    // 0 Arguments
    External (_GPE._E7C, MethodObj)    // 0 Arguments
    External (_GPE._E7D, MethodObj)    // 0 Arguments
    External (_GPE._E7E, MethodObj)    // 0 Arguments
    External (_GPE._E7F, MethodObj)    // 0 Arguments
    External (_GPE._E80, MethodObj)    // 0 Arguments
    External (_GPE._E81, MethodObj)    // 0 Arguments
    External (_GPE._E82, MethodObj)    // 0 Arguments
    External (_GPE._E83, MethodObj)    // 0 Arguments
    External (_GPE._E84, MethodObj)    // 0 Arguments
    External (_GPE._E85, MethodObj)    // 0 Arguments
    External (_GPE._E86, MethodObj)    // 0 Arguments
    External (_GPE._E87, MethodObj)    // 0 Arguments
    External (_GPE._E88, MethodObj)    // 0 Arguments
    External (_GPE._E89, MethodObj)    // 0 Arguments
    External (_GPE._E8A, MethodObj)    // 0 Arguments
    External (_GPE._E8B, MethodObj)    // 0 Arguments
    External (_GPE._E8C, MethodObj)    // 0 Arguments
    External (_GPE._E8D, MethodObj)    // 0 Arguments
    External (_GPE._E8E, MethodObj)    // 0 Arguments
    External (_GPE._E8F, MethodObj)    // 0 Arguments
    External (_GPE._E90, MethodObj)    // 0 Arguments
    External (_GPE._E91, MethodObj)    // 0 Arguments
    External (_GPE._E92, MethodObj)    // 0 Arguments
    External (_GPE._E93, MethodObj)    // 0 Arguments
    External (_GPE._E94, MethodObj)    // 0 Arguments
    External (_GPE._E95, MethodObj)    // 0 Arguments
    External (_GPE._E96, MethodObj)    // 0 Arguments
    External (_GPE._E97, MethodObj)    // 0 Arguments
    External (_GPE._E98, MethodObj)    // 0 Arguments
    External (_GPE._E99, MethodObj)    // 0 Arguments
    External (_GPE._E9A, MethodObj)    // 0 Arguments
    External (_GPE._E9B, MethodObj)    // 0 Arguments
    External (_GPE._E9C, MethodObj)    // 0 Arguments
    External (_GPE._E9D, MethodObj)    // 0 Arguments
    External (_GPE._E9E, MethodObj)    // 0 Arguments
    External (_GPE._E9F, MethodObj)    // 0 Arguments
    External (_GPE._EA0, MethodObj)    // 0 Arguments
    External (_GPE._EA1, MethodObj)    // 0 Arguments
    External (_GPE._EA2, MethodObj)    // 0 Arguments
    External (_GPE._EA3, MethodObj)    // 0 Arguments
    External (_GPE._EA4, MethodObj)    // 0 Arguments
    External (_GPE._EA5, MethodObj)    // 0 Arguments
    External (_GPE._EA6, MethodObj)    // 0 Arguments
    External (_GPE._EA7, MethodObj)    // 0 Arguments
    External (_GPE._EA8, MethodObj)    // 0 Arguments
    External (_GPE._EA9, MethodObj)    // 0 Arguments
    External (_GPE._EAA, MethodObj)    // 0 Arguments
    External (_GPE._EAB, MethodObj)    // 0 Arguments
    External (_GPE._EAC, MethodObj)    // 0 Arguments
    External (_GPE._EAD, MethodObj)    // 0 Arguments
    External (_GPE._EAE, MethodObj)    // 0 Arguments
    External (_GPE._EAF, MethodObj)    // 0 Arguments
    External (_GPE._EB0, MethodObj)    // 0 Arguments
    External (_GPE._EB1, MethodObj)    // 0 Arguments
    External (_GPE._EB2, MethodObj)    // 0 Arguments
    External (_GPE._EB3, MethodObj)    // 0 Arguments
    External (_GPE._EB4, MethodObj)    // 0 Arguments
    External (_GPE._EB5, MethodObj)    // 0 Arguments
    External (_GPE._EB6, MethodObj)    // 0 Arguments
    External (_GPE._EB7, MethodObj)    // 0 Arguments
    External (_GPE._EB8, MethodObj)    // 0 Arguments
    External (_GPE._EB9, MethodObj)    // 0 Arguments
    External (_GPE._EBA, MethodObj)    // 0 Arguments
    External (_GPE._EBB, MethodObj)    // 0 Arguments
    External (_GPE._EBC, MethodObj)    // 0 Arguments
    External (_GPE._EBD, MethodObj)    // 0 Arguments
    External (_GPE._EBE, MethodObj)    // 0 Arguments
    External (_GPE._EBF, MethodObj)    // 0 Arguments
    External (_GPE._EC0, MethodObj)    // 0 Arguments
    External (_GPE._EC1, MethodObj)    // 0 Arguments
    External (_GPE._EC2, MethodObj)    // 0 Arguments
    External (_GPE._EC3, MethodObj)    // 0 Arguments
    External (_GPE._EC4, MethodObj)    // 0 Arguments
    External (_GPE._EC5, MethodObj)    // 0 Arguments
    External (_GPE._EC6, MethodObj)    // 0 Arguments
    External (_GPE._EC7, MethodObj)    // 0 Arguments
    External (_GPE._EC8, MethodObj)    // 0 Arguments
    External (_GPE._EC9, MethodObj)    // 0 Arguments
    External (_GPE._ECA, MethodObj)    // 0 Arguments
    External (_GPE._ECB, MethodObj)    // 0 Arguments
    External (_GPE._ECC, MethodObj)    // 0 Arguments
    External (_GPE._ECD, MethodObj)    // 0 Arguments
    External (_GPE._ECE, MethodObj)    // 0 Arguments
    External (_GPE._ECF, MethodObj)    // 0 Arguments
    External (_GPE._ED0, MethodObj)    // 0 Arguments
    External (_GPE._ED1, MethodObj)    // 0 Arguments
    External (_GPE._ED2, MethodObj)    // 0 Arguments
    External (_GPE._ED3, MethodObj)    // 0 Arguments
    External (_GPE._ED4, MethodObj)    // 0 Arguments
    External (_GPE._ED5, MethodObj)    // 0 Arguments
    External (_GPE._ED6, MethodObj)    // 0 Arguments
    External (_GPE._ED7, MethodObj)    // 0 Arguments
    External (_GPE._ED8, MethodObj)    // 0 Arguments
    External (_GPE._ED9, MethodObj)    // 0 Arguments
    External (_GPE._EDA, MethodObj)    // 0 Arguments
    External (_GPE._EDB, MethodObj)    // 0 Arguments
    External (_GPE._EDC, MethodObj)    // 0 Arguments
    External (_GPE._EDD, MethodObj)    // 0 Arguments
    External (_GPE._EDE, MethodObj)    // 0 Arguments
    External (_GPE._EDF, MethodObj)    // 0 Arguments
    External (_GPE._EE0, MethodObj)    // 0 Arguments
    External (_GPE._EE1, MethodObj)    // 0 Arguments
    External (_GPE._EE2, MethodObj)    // 0 Arguments
    External (_GPE._EE3, MethodObj)    // 0 Arguments
    External (_GPE._EE4, MethodObj)    // 0 Arguments
    External (_GPE._EE5, MethodObj)    // 0 Arguments
    External (_GPE._EE6, MethodObj)    // 0 Arguments
    External (_GPE._EE7, MethodObj)    // 0 Arguments
    External (_GPE._EE8, MethodObj)    // 0 Arguments
    External (_GPE._EE9, MethodObj)    // 0 Arguments
    External (_GPE._EEA, MethodObj)    // 0 Arguments
    External (_GPE._EEB, MethodObj)    // 0 Arguments
    External (_GPE._EEC, MethodObj)    // 0 Arguments
    External (_GPE._EED, MethodObj)    // 0 Arguments
    External (_GPE._EEE, MethodObj)    // 0 Arguments
    External (_GPE._EEF, MethodObj)    // 0 Arguments
    External (_GPE._EF0, MethodObj)    // 0 Arguments
    External (_GPE._EF1, MethodObj)    // 0 Arguments
    External (_GPE._EF2, MethodObj)    // 0 Arguments
    External (_GPE._EF3, MethodObj)    // 0 Arguments
    External (_GPE._EF4, MethodObj)    // 0 Arguments
    External (_GPE._EF5, MethodObj)    // 0 Arguments
    External (_GPE._EF6, MethodObj)    // 0 Arguments
    External (_GPE._EF7, MethodObj)    // 0 Arguments
    External (_GPE._EF8, MethodObj)    // 0 Arguments
    External (_GPE._EF9, MethodObj)    // 0 Arguments
    External (_GPE._EFA, MethodObj)    // 0 Arguments
    External (_GPE._EFB, MethodObj)    // 0 Arguments
    External (_GPE._EFC, MethodObj)    // 0 Arguments
    External (_GPE._EFD, MethodObj)    // 0 Arguments
    External (_GPE._EFE, MethodObj)    // 0 Arguments
    External (_GPE._EFF, MethodObj)    // 0 Arguments
    External (_GPE._L01, MethodObj)    // 0 Arguments
    External (_GPE._L02, MethodObj)    // 0 Arguments
    External (_GPE._L03, MethodObj)    // 0 Arguments
    External (_GPE._L04, MethodObj)    // 0 Arguments
    External (_GPE._L05, MethodObj)    // 0 Arguments
    External (_GPE._L06, MethodObj)    // 0 Arguments
    External (_GPE._L07, MethodObj)    // 0 Arguments
    External (_GPE._L08, MethodObj)    // 0 Arguments
    External (_GPE._L09, MethodObj)    // 0 Arguments
    External (_GPE._L0A, MethodObj)    // 0 Arguments
    External (_GPE._L0B, MethodObj)    // 0 Arguments
    External (_GPE._L0C, MethodObj)    // 0 Arguments
    External (_GPE._L0D, MethodObj)    // 0 Arguments
    External (_GPE._L0E, MethodObj)    // 0 Arguments
    External (_GPE._L0F, MethodObj)    // 0 Arguments
    External (_GPE._L10, MethodObj)    // 0 Arguments
    External (_GPE._L11, MethodObj)    // 0 Arguments
    External (_GPE._L12, MethodObj)    // 0 Arguments
    External (_GPE._L13, MethodObj)    // 0 Arguments
    External (_GPE._L14, MethodObj)    // 0 Arguments
    External (_GPE._L15, MethodObj)    // 0 Arguments
    External (_GPE._L16, MethodObj)    // 0 Arguments
    External (_GPE._L17, MethodObj)    // 0 Arguments
    External (_GPE._L18, MethodObj)    // 0 Arguments
    External (_GPE._L19, MethodObj)    // 0 Arguments
    External (_GPE._L1A, MethodObj)    // 0 Arguments
    External (_GPE._L1B, MethodObj)    // 0 Arguments
    External (_GPE._L1C, MethodObj)    // 0 Arguments
    External (_GPE._L1D, MethodObj)    // 0 Arguments
    External (_GPE._L1E, MethodObj)    // 0 Arguments
    External (_GPE._L1F, MethodObj)    // 0 Arguments
    External (_GPE._L20, MethodObj)    // 0 Arguments
    External (_GPE._L21, MethodObj)    // 0 Arguments
    External (_GPE._L22, MethodObj)    // 0 Arguments
    External (_GPE._L23, MethodObj)    // 0 Arguments
    External (_GPE._L24, MethodObj)    // 0 Arguments
    External (_GPE._L25, MethodObj)    // 0 Arguments
    External (_GPE._L26, MethodObj)    // 0 Arguments
    External (_GPE._L27, MethodObj)    // 0 Arguments
    External (_GPE._L28, MethodObj)    // 0 Arguments
    External (_GPE._L29, MethodObj)    // 0 Arguments
    External (_GPE._L2A, MethodObj)    // 0 Arguments
    External (_GPE._L2B, MethodObj)    // 0 Arguments
    External (_GPE._L2C, MethodObj)    // 0 Arguments
    External (_GPE._L2D, MethodObj)    // 0 Arguments
    External (_GPE._L2E, MethodObj)    // 0 Arguments
    External (_GPE._L2F, MethodObj)    // 0 Arguments
    External (_GPE._L30, MethodObj)    // 0 Arguments
    External (_GPE._L31, MethodObj)    // 0 Arguments
    External (_GPE._L32, MethodObj)    // 0 Arguments
    External (_GPE._L33, MethodObj)    // 0 Arguments
    External (_GPE._L34, MethodObj)    // 0 Arguments
    External (_GPE._L35, MethodObj)    // 0 Arguments
    External (_GPE._L36, MethodObj)    // 0 Arguments
    External (_GPE._L37, MethodObj)    // 0 Arguments
    External (_GPE._L38, MethodObj)    // 0 Arguments
    External (_GPE._L39, MethodObj)    // 0 Arguments
    External (_GPE._L3A, MethodObj)    // 0 Arguments
    External (_GPE._L3B, MethodObj)    // 0 Arguments
    External (_GPE._L3C, MethodObj)    // 0 Arguments
    External (_GPE._L3D, MethodObj)    // 0 Arguments
    External (_GPE._L3E, MethodObj)    // 0 Arguments
    External (_GPE._L3F, MethodObj)    // 0 Arguments
    External (_GPE._L40, MethodObj)    // 0 Arguments
    External (_GPE._L41, MethodObj)    // 0 Arguments
    External (_GPE._L42, MethodObj)    // 0 Arguments
    External (_GPE._L43, MethodObj)    // 0 Arguments
    External (_GPE._L44, MethodObj)    // 0 Arguments
    External (_GPE._L45, MethodObj)    // 0 Arguments
    External (_GPE._L46, MethodObj)    // 0 Arguments
    External (_GPE._L47, MethodObj)    // 0 Arguments
    External (_GPE._L48, MethodObj)    // 0 Arguments
    External (_GPE._L49, MethodObj)    // 0 Arguments
    External (_GPE._L4A, MethodObj)    // 0 Arguments
    External (_GPE._L4B, MethodObj)    // 0 Arguments
    External (_GPE._L4C, MethodObj)    // 0 Arguments
    External (_GPE._L4D, MethodObj)    // 0 Arguments
    External (_GPE._L4E, MethodObj)    // 0 Arguments
    External (_GPE._L4F, MethodObj)    // 0 Arguments
    External (_GPE._L50, MethodObj)    // 0 Arguments
    External (_GPE._L51, MethodObj)    // 0 Arguments
    External (_GPE._L52, MethodObj)    // 0 Arguments
    External (_GPE._L53, MethodObj)    // 0 Arguments
    External (_GPE._L54, MethodObj)    // 0 Arguments
    External (_GPE._L55, MethodObj)    // 0 Arguments
    External (_GPE._L56, MethodObj)    // 0 Arguments
    External (_GPE._L57, MethodObj)    // 0 Arguments
    External (_GPE._L58, MethodObj)    // 0 Arguments
    External (_GPE._L59, MethodObj)    // 0 Arguments
    External (_GPE._L5A, MethodObj)    // 0 Arguments
    External (_GPE._L5B, MethodObj)    // 0 Arguments
    External (_GPE._L5C, MethodObj)    // 0 Arguments
    External (_GPE._L5D, MethodObj)    // 0 Arguments
    External (_GPE._L5E, MethodObj)    // 0 Arguments
    External (_GPE._L5F, MethodObj)    // 0 Arguments
    External (_GPE._L60, MethodObj)    // 0 Arguments
    External (_GPE._L61, MethodObj)    // 0 Arguments
    External (_GPE._L62, MethodObj)    // 0 Arguments
    External (_GPE._L63, MethodObj)    // 0 Arguments
    External (_GPE._L64, MethodObj)    // 0 Arguments
    External (_GPE._L65, MethodObj)    // 0 Arguments
    External (_GPE._L66, MethodObj)    // 0 Arguments
    External (_GPE._L67, MethodObj)    // 0 Arguments
    External (_GPE._L68, MethodObj)    // 0 Arguments
    External (_GPE._L69, MethodObj)    // 0 Arguments
    External (_GPE._L6A, MethodObj)    // 0 Arguments
    External (_GPE._L6B, MethodObj)    // 0 Arguments
    External (_GPE._L6C, MethodObj)    // 0 Arguments
    External (_GPE._L6D, MethodObj)    // 0 Arguments
    External (_GPE._L6E, MethodObj)    // 0 Arguments
    External (_GPE._L6F, MethodObj)    // 0 Arguments
    External (_GPE._L70, MethodObj)    // 0 Arguments
    External (_GPE._L71, MethodObj)    // 0 Arguments
    External (_GPE._L72, MethodObj)    // 0 Arguments
    External (_GPE._L73, MethodObj)    // 0 Arguments
    External (_GPE._L74, MethodObj)    // 0 Arguments
    External (_GPE._L75, MethodObj)    // 0 Arguments
    External (_GPE._L76, MethodObj)    // 0 Arguments
    External (_GPE._L77, MethodObj)    // 0 Arguments
    External (_GPE._L78, MethodObj)    // 0 Arguments
    External (_GPE._L79, MethodObj)    // 0 Arguments
    External (_GPE._L7A, MethodObj)    // 0 Arguments
    External (_GPE._L7B, MethodObj)    // 0 Arguments
    External (_GPE._L7C, MethodObj)    // 0 Arguments
    External (_GPE._L7D, MethodObj)    // 0 Arguments
    External (_GPE._L7E, MethodObj)    // 0 Arguments
    External (_GPE._L7F, MethodObj)    // 0 Arguments
    External (_GPE._L80, MethodObj)    // 0 Arguments
    External (_GPE._L81, MethodObj)    // 0 Arguments
    External (_GPE._L82, MethodObj)    // 0 Arguments
    External (_GPE._L83, MethodObj)    // 0 Arguments
    External (_GPE._L84, MethodObj)    // 0 Arguments
    External (_GPE._L85, MethodObj)    // 0 Arguments
    External (_GPE._L86, MethodObj)    // 0 Arguments
    External (_GPE._L87, MethodObj)    // 0 Arguments
    External (_GPE._L88, MethodObj)    // 0 Arguments
    External (_GPE._L89, MethodObj)    // 0 Arguments
    External (_GPE._L8A, MethodObj)    // 0 Arguments
    External (_GPE._L8B, MethodObj)    // 0 Arguments
    External (_GPE._L8C, MethodObj)    // 0 Arguments
    External (_GPE._L8D, MethodObj)    // 0 Arguments
    External (_GPE._L8E, MethodObj)    // 0 Arguments
    External (_GPE._L8F, MethodObj)    // 0 Arguments
    External (_GPE._L90, MethodObj)    // 0 Arguments
    External (_GPE._L91, MethodObj)    // 0 Arguments
    External (_GPE._L92, MethodObj)    // 0 Arguments
    External (_GPE._L93, MethodObj)    // 0 Arguments
    External (_GPE._L94, MethodObj)    // 0 Arguments
    External (_GPE._L95, MethodObj)    // 0 Arguments
    External (_GPE._L96, MethodObj)    // 0 Arguments
    External (_GPE._L97, MethodObj)    // 0 Arguments
    External (_GPE._L98, MethodObj)    // 0 Arguments
    External (_GPE._L99, MethodObj)    // 0 Arguments
    External (_GPE._L9A, MethodObj)    // 0 Arguments
    External (_GPE._L9B, MethodObj)    // 0 Arguments
    External (_GPE._L9C, MethodObj)    // 0 Arguments
    External (_GPE._L9D, MethodObj)    // 0 Arguments
    External (_GPE._L9E, MethodObj)    // 0 Arguments
    External (_GPE._L9F, MethodObj)    // 0 Arguments
    External (_GPE._LA0, MethodObj)    // 0 Arguments
    External (_GPE._LA1, MethodObj)    // 0 Arguments
    External (_GPE._LA2, MethodObj)    // 0 Arguments
    External (_GPE._LA3, MethodObj)    // 0 Arguments
    External (_GPE._LA4, MethodObj)    // 0 Arguments
    External (_GPE._LA5, MethodObj)    // 0 Arguments
    External (_GPE._LA6, MethodObj)    // 0 Arguments
    External (_GPE._LA7, MethodObj)    // 0 Arguments
    External (_GPE._LA8, MethodObj)    // 0 Arguments
    External (_GPE._LA9, MethodObj)    // 0 Arguments
    External (_GPE._LAA, MethodObj)    // 0 Arguments
    External (_GPE._LAB, MethodObj)    // 0 Arguments
    External (_GPE._LAC, MethodObj)    // 0 Arguments
    External (_GPE._LAD, MethodObj)    // 0 Arguments
    External (_GPE._LAE, MethodObj)    // 0 Arguments
    External (_GPE._LAF, MethodObj)    // 0 Arguments
    External (_GPE._LB0, MethodObj)    // 0 Arguments
    External (_GPE._LB1, MethodObj)    // 0 Arguments
    External (_GPE._LB2, MethodObj)    // 0 Arguments
    External (_GPE._LB3, MethodObj)    // 0 Arguments
    External (_GPE._LB4, MethodObj)    // 0 Arguments
    External (_GPE._LB5, MethodObj)    // 0 Arguments
    External (_GPE._LB6, MethodObj)    // 0 Arguments
    External (_GPE._LB7, MethodObj)    // 0 Arguments
    External (_GPE._LB8, MethodObj)    // 0 Arguments
    External (_GPE._LB9, MethodObj)    // 0 Arguments
    External (_GPE._LBA, MethodObj)    // 0 Arguments
    External (_GPE._LBB, MethodObj)    // 0 Arguments
    External (_GPE._LBC, MethodObj)    // 0 Arguments
    External (_GPE._LBD, MethodObj)    // 0 Arguments
    External (_GPE._LBE, MethodObj)    // 0 Arguments
    External (_GPE._LBF, MethodObj)    // 0 Arguments
    External (_GPE._LC0, MethodObj)    // 0 Arguments
    External (_GPE._LC1, MethodObj)    // 0 Arguments
    External (_GPE._LC2, MethodObj)    // 0 Arguments
    External (_GPE._LC3, MethodObj)    // 0 Arguments
    External (_GPE._LC4, MethodObj)    // 0 Arguments
    External (_GPE._LC5, MethodObj)    // 0 Arguments
    External (_GPE._LC6, MethodObj)    // 0 Arguments
    External (_GPE._LC7, MethodObj)    // 0 Arguments
    External (_GPE._LC8, MethodObj)    // 0 Arguments
    External (_GPE._LC9, MethodObj)    // 0 Arguments
    External (_GPE._LCA, MethodObj)    // 0 Arguments
    External (_GPE._LCB, MethodObj)    // 0 Arguments
    External (_GPE._LCC, MethodObj)    // 0 Arguments
    External (_GPE._LCD, MethodObj)    // 0 Arguments
    External (_GPE._LCE, MethodObj)    // 0 Arguments
    External (_GPE._LCF, MethodObj)    // 0 Arguments
    External (_GPE._LD0, MethodObj)    // 0 Arguments
    External (_GPE._LD1, MethodObj)    // 0 Arguments
    External (_GPE._LD2, MethodObj)    // 0 Arguments
    External (_GPE._LD3, MethodObj)    // 0 Arguments
    External (_GPE._LD4, MethodObj)    // 0 Arguments
    External (_GPE._LD5, MethodObj)    // 0 Arguments
    External (_GPE._LD6, MethodObj)    // 0 Arguments
    External (_GPE._LD7, MethodObj)    // 0 Arguments
    External (_GPE._LD8, MethodObj)    // 0 Arguments
    External (_GPE._LD9, MethodObj)    // 0 Arguments
    External (_GPE._LDA, MethodObj)    // 0 Arguments
    External (_GPE._LDB, MethodObj)    // 0 Arguments
    External (_GPE._LDC, MethodObj)    // 0 Arguments
    External (_GPE._LDD, MethodObj)    // 0 Arguments
    External (_GPE._LDE, MethodObj)    // 0 Arguments
    External (_GPE._LDF, MethodObj)    // 0 Arguments
    External (_GPE._LE0, MethodObj)    // 0 Arguments
    External (_GPE._LE1, MethodObj)    // 0 Arguments
    External (_GPE._LE2, MethodObj)    // 0 Arguments
    External (_GPE._LE3, MethodObj)    // 0 Arguments
    External (_GPE._LE4, MethodObj)    // 0 Arguments
    External (_GPE._LE5, MethodObj)    // 0 Arguments
    External (_GPE._LE6, MethodObj)    // 0 Arguments
    External (_GPE._LE7, MethodObj)    // 0 Arguments
    External (_GPE._LE8, MethodObj)    // 0 Arguments
    External (_GPE._LE9, MethodObj)    // 0 Arguments
    External (_GPE._LEA, MethodObj)    // 0 Arguments
    External (_GPE._LEB, MethodObj)    // 0 Arguments
    External (_GPE._LEC, MethodObj)    // 0 Arguments
    External (_GPE._LED, MethodObj)    // 0 Arguments
    External (_GPE._LEE, MethodObj)    // 0 Arguments
    External (_GPE._LEF, MethodObj)    // 0 Arguments
    External (_GPE._LF0, MethodObj)    // 0 Arguments
    External (_GPE._LF1, MethodObj)    // 0 Arguments
    External (_GPE._LF2, MethodObj)    // 0 Arguments
    External (_GPE._LF3, MethodObj)    // 0 Arguments
    External (_GPE._LF4, MethodObj)    // 0 Arguments
    External (_GPE._LF5, MethodObj)    // 0 Arguments
    External (_GPE._LF6, MethodObj)    // 0 Arguments
    External (_GPE._LF7, MethodObj)    // 0 Arguments
    External (_GPE._LF8, MethodObj)    // 0 Arguments
    External (_GPE._LF9, MethodObj)    // 0 Arguments
    External (_GPE._LFA, MethodObj)    // 0 Arguments
    External (_GPE._LFB, MethodObj)    // 0 Arguments
    External (_GPE._LFC, MethodObj)    // 0 Arguments
    External (_GPE._LFD, MethodObj)    // 0 Arguments
    External (_GPE._LFE, MethodObj)    // 0 Arguments
    External (_GPE._LFF, MethodObj)    // 0 Arguments

    Method (GXRF, 0, NotSerialized)
    {
        Return (Zero)
        \_GPE._L01 ()
        \_GPE._L02 ()
        \_GPE._L03 ()
        \_GPE._L04 ()
        \_GPE._L05 ()
        \_GPE._L06 ()
        \_GPE._L07 ()
        \_GPE._L08 ()
        \_GPE._L09 ()
        \_GPE._L0A ()
        \_GPE._L0B ()
        \_GPE._L0C ()
        \_GPE._L0D ()
        \_GPE._L0E ()
        \_GPE._L0F ()
        \_GPE._L10 ()
        \_GPE._L11 ()
        \_GPE._L12 ()
        \_GPE._L13 ()
        \_GPE._L14 ()
        \_GPE._L15 ()
        \_GPE._L16 ()
        \_GPE._L17 ()
        \_GPE._L18 ()
        \_GPE._L19 ()
        \_GPE._L1A ()
        \_GPE._L1B ()
        \_GPE._L1C ()
        \_GPE._L1D ()
        \_GPE._L1E ()
        \_GPE._L1F ()
        \_GPE._L20 ()
        \_GPE._L21 ()
        \_GPE._L22 ()
        \_GPE._L23 ()
        \_GPE._L24 ()
        \_GPE._L25 ()
        \_GPE._L26 ()
        \_GPE._L27 ()
        \_GPE._L28 ()
        \_GPE._L29 ()
        \_GPE._L2A ()
        \_GPE._L2B ()
        \_GPE._L2C ()
        \_GPE._L2D ()
        \_GPE._L2E ()
        \_GPE._L2F ()
        \_GPE._L30 ()
        \_GPE._L31 ()
        \_GPE._L32 ()
        \_GPE._L33 ()
        \_GPE._L34 ()
        \_GPE._L35 ()
        \_GPE._L36 ()
        \_GPE._L37 ()
        \_GPE._L38 ()
        \_GPE._L39 ()
        \_GPE._L3A ()
        \_GPE._L3B ()
        \_GPE._L3C ()
        \_GPE._L3D ()
        \_GPE._L3E ()
        \_GPE._L3F ()
        \_GPE._L40 ()
        \_GPE._L41 ()
        \_GPE._L42 ()
        \_GPE._L43 ()
        \_GPE._L44 ()
        \_GPE._L45 ()
        \_GPE._L46 ()
        \_GPE._L47 ()
        \_GPE._L48 ()
        \_GPE._L49 ()
        \_GPE._L4A ()
        \_GPE._L4B ()
        \_GPE._L4C ()
        \_GPE._L4D ()
        \_GPE._L4E ()
        \_GPE._L4F ()
        \_GPE._L50 ()
        \_GPE._L51 ()
        \_GPE._L52 ()
        \_GPE._L53 ()
        \_GPE._L54 ()
        \_GPE._L55 ()
        \_GPE._L56 ()
        \_GPE._L57 ()
        \_GPE._L58 ()
        \_GPE._L59 ()
        \_GPE._L5A ()
        \_GPE._L5B ()
        \_GPE._L5C ()
        \_GPE._L5D ()
        \_GPE._L5E ()
        \_GPE._L5F ()
        \_GPE._L60 ()
        \_GPE._L61 ()
        \_GPE._L62 ()
        \_GPE._L63 ()
        \_GPE._L64 ()
        \_GPE._L65 ()
        \_GPE._L66 ()
        \_GPE._L67 ()
        \_GPE._L68 ()
        \_GPE._L69 ()
        \_GPE._L6A ()
        \_GPE._L6B ()
        \_GPE._L6C ()
        \_GPE._L6D ()
        \_GPE._L6E ()
        \_GPE._L6F ()
        \_GPE._L70 ()
        \_GPE._L71 ()
        \_GPE._L72 ()
        \_GPE._L73 ()
        \_GPE._L74 ()
        \_GPE._L75 ()
        \_GPE._L76 ()
        \_GPE._L77 ()
        \_GPE._L78 ()
        \_GPE._L79 ()
        \_GPE._L7A ()
        \_GPE._L7B ()
        \_GPE._L7C ()
        \_GPE._L7D ()
        \_GPE._L7E ()
        \_GPE._L7F ()
        \_GPE._L80 ()
        \_GPE._L81 ()
        \_GPE._L82 ()
        \_GPE._L83 ()
        \_GPE._L84 ()
        \_GPE._L85 ()
        \_GPE._L86 ()
        \_GPE._L87 ()
        \_GPE._L88 ()
        \_GPE._L89 ()
        \_GPE._L8A ()
        \_GPE._L8B ()
        \_GPE._L8C ()
        \_GPE._L8D ()
        \_GPE._L8E ()
        \_GPE._L8F ()
        \_GPE._L90 ()
        \_GPE._L91 ()
        \_GPE._L92 ()
        \_GPE._L93 ()
        \_GPE._L94 ()
        \_GPE._L95 ()
        \_GPE._L96 ()
        \_GPE._L97 ()
        \_GPE._L98 ()
        \_GPE._L99 ()
        \_GPE._L9A ()
        \_GPE._L9B ()
        \_GPE._L9C ()
        \_GPE._L9D ()
        \_GPE._L9E ()
        \_GPE._L9F ()
        \_GPE._LA0 ()
        \_GPE._LA1 ()
        \_GPE._LA2 ()
        \_GPE._LA3 ()
        \_GPE._LA4 ()
        \_GPE._LA5 ()
        \_GPE._LA6 ()
        \_GPE._LA7 ()
        \_GPE._LA8 ()
        \_GPE._LA9 ()
        \_GPE._LAA ()
        \_GPE._LAB ()
        \_GPE._LAC ()
        \_GPE._LAD ()
        \_GPE._LAE ()
        \_GPE._LAF ()
        \_GPE._LB0 ()
        \_GPE._LB1 ()
        \_GPE._LB2 ()
        \_GPE._LB3 ()
        \_GPE._LB4 ()
        \_GPE._LB5 ()
        \_GPE._LB6 ()
        \_GPE._LB7 ()
        \_GPE._LB8 ()
        \_GPE._LB9 ()
        \_GPE._LBA ()
        \_GPE._LBB ()
        \_GPE._LBC ()
        \_GPE._LBD ()
        \_GPE._LBE ()
        \_GPE._LBF ()
        \_GPE._LC0 ()
        \_GPE._LC1 ()
        \_GPE._LC2 ()
        \_GPE._LC3 ()
        \_GPE._LC4 ()
        \_GPE._LC5 ()
        \_GPE._LC6 ()
        \_GPE._LC7 ()
        \_GPE._LC8 ()
        \_GPE._LC9 ()
        \_GPE._LCA ()
        \_GPE._LCB ()
        \_GPE._LCC ()
        \_GPE._LCD ()
        \_GPE._LCE ()
        \_GPE._LCF ()
        \_GPE._LD0 ()
        \_GPE._LD1 ()
        \_GPE._LD2 ()
        \_GPE._LD3 ()
        \_GPE._LD4 ()
        \_GPE._LD5 ()
        \_GPE._LD6 ()
        \_GPE._LD7 ()
        \_GPE._LD8 ()
        \_GPE._LD9 ()
        \_GPE._LDA ()
        \_GPE._LDB ()
        \_GPE._LDC ()
        \_GPE._LDD ()
        \_GPE._LDE ()
        \_GPE._LDF ()
        \_GPE._LE0 ()
        \_GPE._LE1 ()
        \_GPE._LE2 ()
        \_GPE._LE3 ()
        \_GPE._LE4 ()
        \_GPE._LE5 ()
        \_GPE._LE6 ()
        \_GPE._LE7 ()
        \_GPE._LE8 ()
        \_GPE._LE9 ()
        \_GPE._LEA ()
        \_GPE._LEB ()
        \_GPE._LEC ()
        \_GPE._LED ()
        \_GPE._LEE ()
        \_GPE._LEF ()
        \_GPE._LF0 ()
        \_GPE._LF1 ()
        \_GPE._LF2 ()
        \_GPE._LF3 ()
        \_GPE._LF4 ()
        \_GPE._LF5 ()
        \_GPE._LF6 ()
        \_GPE._LF7 ()
        \_GPE._LF8 ()
        \_GPE._LF9 ()
        \_GPE._LFA ()
        \_GPE._LFB ()
        \_GPE._LFC ()
        \_GPE._LFD ()
        \_GPE._LFE ()
        \_GPE._LFF ()
        \_GPE._E01 ()
        \_GPE._E02 ()
        \_GPE._E03 ()
        \_GPE._E04 ()
        \_GPE._E05 ()
        \_GPE._E06 ()
        \_GPE._E07 ()
        \_GPE._E08 ()
        \_GPE._E09 ()
        \_GPE._E0A ()
        \_GPE._E0B ()
        \_GPE._E0C ()
        \_GPE._E0D ()
        \_GPE._E0E ()
        \_GPE._E0F ()
        \_GPE._E10 ()
        \_GPE._E11 ()
        \_GPE._E12 ()
        \_GPE._E13 ()
        \_GPE._E14 ()
        \_GPE._E15 ()
        \_GPE._E16 ()
        \_GPE._E17 ()
        \_GPE._E18 ()
        \_GPE._E19 ()
        \_GPE._E1A ()
        \_GPE._E1B ()
        \_GPE._E1C ()
        \_GPE._E1D ()
        \_GPE._E1E ()
        \_GPE._E1F ()
        \_GPE._E20 ()
        \_GPE._E21 ()
        \_GPE._E22 ()
        \_GPE._E23 ()
        \_GPE._E24 ()
        \_GPE._E25 ()
        \_GPE._E26 ()
        \_GPE._E27 ()
        \_GPE._E28 ()
        \_GPE._E29 ()
        \_GPE._E2A ()
        \_GPE._E2B ()
        \_GPE._E2C ()
        \_GPE._E2D ()
        \_GPE._E2E ()
        \_GPE._E2F ()
        \_GPE._E30 ()
        \_GPE._E31 ()
        \_GPE._E32 ()
        \_GPE._E33 ()
        \_GPE._E34 ()
        \_GPE._E35 ()
        \_GPE._E36 ()
        \_GPE._E37 ()
        \_GPE._E38 ()
        \_GPE._E39 ()
        \_GPE._E3A ()
        \_GPE._E3B ()
        \_GPE._E3C ()
        \_GPE._E3D ()
        \_GPE._E3E ()
        \_GPE._E3F ()
        \_GPE._E40 ()
        \_GPE._E41 ()
        \_GPE._E42 ()
        \_GPE._E43 ()
        \_GPE._E44 ()
        \_GPE._E45 ()
        \_GPE._E46 ()
        \_GPE._E47 ()
        \_GPE._E48 ()
        \_GPE._E49 ()
        \_GPE._E4A ()
        \_GPE._E4B ()
        \_GPE._E4C ()
        \_GPE._E4D ()
        \_GPE._E4E ()
        \_GPE._E4F ()
        \_GPE._E50 ()
        \_GPE._E51 ()
        \_GPE._E52 ()
        \_GPE._E53 ()
        \_GPE._E54 ()
        \_GPE._E55 ()
        \_GPE._E56 ()
        \_GPE._E57 ()
        \_GPE._E58 ()
        \_GPE._E59 ()
        \_GPE._E5A ()
        \_GPE._E5B ()
        \_GPE._E5C ()
        \_GPE._E5D ()
        \_GPE._E5E ()
        \_GPE._E5F ()
        \_GPE._E60 ()
        \_GPE._E61 ()
        \_GPE._E62 ()
        \_GPE._E63 ()
        \_GPE._E64 ()
        \_GPE._E65 ()
        \_GPE._E66 ()
        \_GPE._E67 ()
        \_GPE._E68 ()
        \_GPE._E69 ()
        \_GPE._E6A ()
        \_GPE._E6B ()
        \_GPE._E6C ()
        \_GPE._E6D ()
        \_GPE._E6E ()
        \_GPE._E6F ()
        \_GPE._E70 ()
        \_GPE._E71 ()
        \_GPE._E72 ()
        \_GPE._E73 ()
        \_GPE._E74 ()
        \_GPE._E75 ()
        \_GPE._E76 ()
        \_GPE._E77 ()
        \_GPE._E78 ()
        \_GPE._E79 ()
        \_GPE._E7A ()
        \_GPE._E7B ()
        \_GPE._E7C ()
        \_GPE._E7D ()
        \_GPE._E7E ()
        \_GPE._E7F ()
        \_GPE._E80 ()
        \_GPE._E81 ()
        \_GPE._E82 ()
        \_GPE._E83 ()
        \_GPE._E84 ()
        \_GPE._E85 ()
        \_GPE._E86 ()
        \_GPE._E87 ()
        \_GPE._E88 ()
        \_GPE._E89 ()
        \_GPE._E8A ()
        \_GPE._E8B ()
        \_GPE._E8C ()
        \_GPE._E8D ()
        \_GPE._E8E ()
        \_GPE._E8F ()
        \_GPE._E90 ()
        \_GPE._E91 ()
        \_GPE._E92 ()
        \_GPE._E93 ()
        \_GPE._E94 ()
        \_GPE._E95 ()
        \_GPE._E96 ()
        \_GPE._E97 ()
        \_GPE._E98 ()
        \_GPE._E99 ()
        \_GPE._E9A ()
        \_GPE._E9B ()
        \_GPE._E9C ()
        \_GPE._E9D ()
        \_GPE._E9E ()
        \_GPE._E9F ()
        \_GPE._EA0 ()
        \_GPE._EA1 ()
        \_GPE._EA2 ()
        \_GPE._EA3 ()
        \_GPE._EA4 ()
        \_GPE._EA5 ()
        \_GPE._EA6 ()
        \_GPE._EA7 ()
        \_GPE._EA8 ()
        \_GPE._EA9 ()
        \_GPE._EAA ()
        \_GPE._EAB ()
        \_GPE._EAC ()
        \_GPE._EAD ()
        \_GPE._EAE ()
        \_GPE._EAF ()
        \_GPE._EB0 ()
        \_GPE._EB1 ()
        \_GPE._EB2 ()
        \_GPE._EB3 ()
        \_GPE._EB4 ()
        \_GPE._EB5 ()
        \_GPE._EB6 ()
        \_GPE._EB7 ()
        \_GPE._EB8 ()
        \_GPE._EB9 ()
        \_GPE._EBA ()
        \_GPE._EBB ()
        \_GPE._EBC ()
        \_GPE._EBD ()
        \_GPE._EBE ()
        \_GPE._EBF ()
        \_GPE._EC0 ()
        \_GPE._EC1 ()
        \_GPE._EC2 ()
        \_GPE._EC3 ()
        \_GPE._EC4 ()
        \_GPE._EC5 ()
        \_GPE._EC6 ()
        \_GPE._EC7 ()
        \_GPE._EC8 ()
        \_GPE._EC9 ()
        \_GPE._ECA ()
        \_GPE._ECB ()
        \_GPE._ECC ()
        \_GPE._ECD ()
        \_GPE._ECE ()
        \_GPE._ECF ()
        \_GPE._ED0 ()
        \_GPE._ED1 ()
        \_GPE._ED2 ()
        \_GPE._ED3 ()
        \_GPE._ED4 ()
        \_GPE._ED5 ()
        \_GPE._ED6 ()
        \_GPE._ED7 ()
        \_GPE._ED8 ()
        \_GPE._ED9 ()
        \_GPE._EDA ()
        \_GPE._EDB ()
        \_GPE._EDC ()
        \_GPE._EDD ()
        \_GPE._EDE ()
        \_GPE._EDF ()
        \_GPE._EE0 ()
        \_GPE._EE1 ()
        \_GPE._EE2 ()
        \_GPE._EE3 ()
        \_GPE._EE4 ()
        \_GPE._EE5 ()
        \_GPE._EE6 ()
        \_GPE._EE7 ()
        \_GPE._EE8 ()
        \_GPE._EE9 ()
        \_GPE._EEA ()
        \_GPE._EEB ()
        \_GPE._EEC ()
        \_GPE._EED ()
        \_GPE._EEE ()
        \_GPE._EEF ()
        \_GPE._EF0 ()
        \_GPE._EF1 ()
        \_GPE._EF2 ()
        \_GPE._EF3 ()
        \_GPE._EF4 ()
        \_GPE._EF5 ()
        \_GPE._EF6 ()
        \_GPE._EF7 ()
        \_GPE._EF8 ()
        \_GPE._EF9 ()
        \_GPE._EFA ()
        \_GPE._EFB ()
        \_GPE._EFC ()
        \_GPE._EFD ()
        \_GPE._EFE ()
        \_GPE._EFF ()
    }

    Scope (_GPE)
    {
        If (CondRefOf (_L01))
        {
            Debug = "_L01 Already Exist"
        }
        Else
        {
            Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L01"
            }
        }

        If (CondRefOf (_L02))
        {
            Debug = "_L02 Already Exist"
        }
        Else
        {
            Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L02"
            }
        }

        If (CondRefOf (_L03))
        {
            Debug = "_L03 Already Exist"
        }
        Else
        {
            Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L03"
            }
        }

        If (CondRefOf (_L04))
        {
            Debug = "_L04 Already Exist"
        }
        Else
        {
            Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L04"
            }
        }

        If (CondRefOf (_L05))
        {
            Debug = "_L05 Already Exist"
        }
        Else
        {
            Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L05"
            }
        }

        If (CondRefOf (_L06))
        {
            Debug = "_L06 Already Exist"
        }
        Else
        {
            Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L06"
            }
        }

        If (CondRefOf (_L07))
        {
            Debug = "_L07 Already Exist"
        }
        Else
        {
            Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L07"
            }
        }

        If (CondRefOf (_L08))
        {
            Debug = "_L08 Already Exist"
        }
        Else
        {
            Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L08"
            }
        }

        If (CondRefOf (_L09))
        {
            Debug = "_L09 Already Exist"
        }
        Else
        {
            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L09"
            }
        }

        If (CondRefOf (_L0A))
        {
            Debug = "_L0A Already Exist"
        }
        Else
        {
            Method (_L0A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L0A"
            }
        }

        If (CondRefOf (_L0B))
        {
            Debug = "_L0B Already Exist"
        }
        Else
        {
            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L0B"
            }
        }

        If (CondRefOf (_L0C))
        {
            Debug = "_L0C Already Exist"
        }
        Else
        {
            Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L0C"
            }
        }

        If (CondRefOf (_L0D))
        {
            Debug = "_L0D Already Exist"
        }
        Else
        {
            Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L0D"
            }
        }

        If (CondRefOf (_L0E))
        {
            Debug = "_L0E Already Exist"
        }
        Else
        {
            Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L0E"
            }
        }

        If (CondRefOf (_L0F))
        {
            Debug = "_L0F Already Exist"
        }
        Else
        {
            Method (_L0F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L0F"
            }
        }

        If (CondRefOf (_L10))
        {
            Debug = "_L10 Already Exist"
        }
        Else
        {
            Method (_L10, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L10"
            }
        }

        If (CondRefOf (_L11))
        {
            Debug = "_L11 Already Exist"
        }
        Else
        {
            Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L11"
            }
        }

        If (CondRefOf (_L12))
        {
            Debug = "_L12 Already Exist"
        }
        Else
        {
            Method (_L12, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L12"
            }
        }

        If (CondRefOf (_L13))
        {
            Debug = "_L13 Already Exist"
        }
        Else
        {
            Method (_L13, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L13"
            }
        }

        If (CondRefOf (_L14))
        {
            Debug = "_L14 Already Exist"
        }
        Else
        {
            Method (_L14, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L14"
            }
        }

        If (CondRefOf (_L15))
        {
            Debug = "_L15 Already Exist"
        }
        Else
        {
            Method (_L15, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L15"
            }
        }

        If (CondRefOf (_L16))
        {
            Debug = "_L16 Already Exist"
        }
        Else
        {
            Method (_L16, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L16"
            }
        }

        If (CondRefOf (_L17))
        {
            Debug = "_L17 Already Exist"
        }
        Else
        {
            Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L17"
            }
        }

        If (CondRefOf (_L18))
        {
            Debug = "_L18 Already Exist"
        }
        Else
        {
            Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L18"
            }
        }

        If (CondRefOf (_L19))
        {
            Debug = "_L19 Already Exist"
        }
        Else
        {
            Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L19"
            }
        }

        If (CondRefOf (_L1A))
        {
            Debug = "_L1A Already Exist"
        }
        Else
        {
            Method (_L1A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L1A"
            }
        }

        If (CondRefOf (_L1B))
        {
            Debug = "_L1B Already Exist"
        }
        Else
        {
            Method (_L1B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L1B"
            }
        }

        If (CondRefOf (_L1C))
        {
            Debug = "_L1C Already Exist"
        }
        Else
        {
            Method (_L1C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L1C"
            }
        }

        If (CondRefOf (_L1D))
        {
            Debug = "_L1D Already Exist"
        }
        Else
        {
            Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L1D"
            }
        }

        If (CondRefOf (_L1E))
        {
            Debug = "_L1E Already Exist"
        }
        Else
        {
            Method (_L1E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L1E"
            }
        }

        If (CondRefOf (_L1F))
        {
            Debug = "_L1F Already Exist"
        }
        Else
        {
            Method (_L1F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L1F"
            }
        }

        If (CondRefOf (_L20))
        {
            Debug = "_L20 Already Exist"
        }
        Else
        {
            Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L20"
            }
        }

        If (CondRefOf (_L21))
        {
            Debug = "_L21 Already Exist"
        }
        Else
        {
            Method (_L21, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L21"
            }
        }

        If (CondRefOf (_L22))
        {
            Debug = "_L22 Already Exist"
        }
        Else
        {
            Method (_L22, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L22"
            }
        }

        If (CondRefOf (_L23))
        {
            Debug = "_L23 Already Exist"
        }
        Else
        {
            Method (_L23, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L23"
            }
        }

        If (CondRefOf (_L24))
        {
            Debug = "_L24 Already Exist"
        }
        Else
        {
            Method (_L24, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L24"
            }
        }

        If (CondRefOf (_L25))
        {
            Debug = "_L25 Already Exist"
        }
        Else
        {
            Method (_L25, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L25"
            }
        }

        If (CondRefOf (_L26))
        {
            Debug = "_L26 Already Exist"
        }
        Else
        {
            Method (_L26, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L26"
            }
        }

        If (CondRefOf (_L27))
        {
            Debug = "_L27 Already Exist"
        }
        Else
        {
            Method (_L27, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L27"
            }
        }

        If (CondRefOf (_L28))
        {
            Debug = "_L28 Already Exist"
        }
        Else
        {
            Method (_L28, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L28"
            }
        }

        If (CondRefOf (_L29))
        {
            Debug = "_L29 Already Exist"
        }
        Else
        {
            Method (_L29, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L29"
            }
        }

        If (CondRefOf (_L2A))
        {
            Debug = "_L2A Already Exist"
        }
        Else
        {
            Method (_L2A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L2A"
            }
        }

        If (CondRefOf (_L2B))
        {
            Debug = "_L2B Already Exist"
        }
        Else
        {
            Method (_L2B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L2B"
            }
        }

        If (CondRefOf (_L2C))
        {
            Debug = "_L2C Already Exist"
        }
        Else
        {
            Method (_L2C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L2C"
            }
        }

        If (CondRefOf (_L2D))
        {
            Debug = "_L2D Already Exist"
        }
        Else
        {
            Method (_L2D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L2D"
            }
        }

        If (CondRefOf (_L2E))
        {
            Debug = "_L2E Already Exist"
        }
        Else
        {
            Method (_L2E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L2E"
            }
        }

        If (CondRefOf (_L2F))
        {
            Debug = "_L2F Already Exist"
        }
        Else
        {
            Method (_L2F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L2F"
            }
        }

        If (CondRefOf (_L30))
        {
            Debug = "_L30 Already Exist"
        }
        Else
        {
            Method (_L30, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L30"
            }
        }

        If (CondRefOf (_L31))
        {
            Debug = "_L31 Already Exist"
        }
        Else
        {
            Method (_L31, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L31"
            }
        }

        If (CondRefOf (_L32))
        {
            Debug = "_L32 Already Exist"
        }
        Else
        {
            Method (_L32, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L32"
            }
        }

        If (CondRefOf (_L33))
        {
            Debug = "_L33 Already Exist"
        }
        Else
        {
            Method (_L33, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L33"
            }
        }

        If (CondRefOf (_L34))
        {
            Debug = "_L34 Already Exist"
        }
        Else
        {
            Method (_L34, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L34"
            }
        }

        If (CondRefOf (_L35))
        {
            Debug = "_L35 Already Exist"
        }
        Else
        {
            Method (_L35, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L35"
            }
        }

        If (CondRefOf (_L36))
        {
            Debug = "_L36 Already Exist"
        }
        Else
        {
            Method (_L36, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L36"
            }
        }

        If (CondRefOf (_L37))
        {
            Debug = "_L37 Already Exist"
        }
        Else
        {
            Method (_L37, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L37"
            }
        }

        If (CondRefOf (_L38))
        {
            Debug = "_L38 Already Exist"
        }
        Else
        {
            Method (_L38, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L38"
            }
        }

        If (CondRefOf (_L39))
        {
            Debug = "_L39 Already Exist"
        }
        Else
        {
            Method (_L39, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L39"
            }
        }

        If (CondRefOf (_L3A))
        {
            Debug = "_L3A Already Exist"
        }
        Else
        {
            Method (_L3A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L3A"
            }
        }

        If (CondRefOf (_L3B))
        {
            Debug = "_L3B Already Exist"
        }
        Else
        {
            Method (_L3B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L3B"
            }
        }

        If (CondRefOf (_L3C))
        {
            Debug = "_L3C Already Exist"
        }
        Else
        {
            Method (_L3C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L3C"
            }
        }

        If (CondRefOf (_L3D))
        {
            Debug = "_L3D Already Exist"
        }
        Else
        {
            Method (_L3D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L3D"
            }
        }

        If (CondRefOf (_L3E))
        {
            Debug = "_L3E Already Exist"
        }
        Else
        {
            Method (_L3E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L3E"
            }
        }

        If (CondRefOf (_L3F))
        {
            Debug = "_L3F Already Exist"
        }
        Else
        {
            Method (_L3F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L3F"
            }
        }

        If (CondRefOf (_L40))
        {
            Debug = "_L40 Already Exist"
        }
        Else
        {
            Method (_L40, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L40"
            }
        }

        If (CondRefOf (_L41))
        {
            Debug = "_L41 Already Exist"
        }
        Else
        {
            Method (_L41, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L41"
            }
        }

        If (CondRefOf (_L42))
        {
            Debug = "_L42 Already Exist"
        }
        Else
        {
            Method (_L42, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L42"
            }
        }

        If (CondRefOf (_L43))
        {
            Debug = "_L43 Already Exist"
        }
        Else
        {
            Method (_L43, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L43"
            }
        }

        If (CondRefOf (_L44))
        {
            Debug = "_L44 Already Exist"
        }
        Else
        {
            Method (_L44, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L44"
            }
        }

        If (CondRefOf (_L45))
        {
            Debug = "_L45 Already Exist"
        }
        Else
        {
            Method (_L45, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L45"
            }
        }

        If (CondRefOf (_L46))
        {
            Debug = "_L46 Already Exist"
        }
        Else
        {
            Method (_L46, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L46"
            }
        }

        If (CondRefOf (_L47))
        {
            Debug = "_L47 Already Exist"
        }
        Else
        {
            Method (_L47, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L47"
            }
        }

        If (CondRefOf (_L48))
        {
            Debug = "_L48 Already Exist"
        }
        Else
        {
            Method (_L48, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L48"
            }
        }

        If (CondRefOf (_L49))
        {
            Debug = "_L49 Already Exist"
        }
        Else
        {
            Method (_L49, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L49"
            }
        }

        If (CondRefOf (_L4A))
        {
            Debug = "_L4A Already Exist"
        }
        Else
        {
            Method (_L4A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L4A"
            }
        }

        If (CondRefOf (_L4B))
        {
            Debug = "_L4B Already Exist"
        }
        Else
        {
            Method (_L4B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L4B"
            }
        }

        If (CondRefOf (_L4C))
        {
            Debug = "_L4C Already Exist"
        }
        Else
        {
            Method (_L4C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L4C"
            }
        }

        If (CondRefOf (_L4D))
        {
            Debug = "_L4D Already Exist"
        }
        Else
        {
            Method (_L4D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L4D"
            }
        }

        If (CondRefOf (_L4E))
        {
            Debug = "_L4E Already Exist"
        }
        Else
        {
            Method (_L4E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L4E"
            }
        }

        If (CondRefOf (_L4F))
        {
            Debug = "_L4F Already Exist"
        }
        Else
        {
            Method (_L4F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L4F"
            }
        }

        If (CondRefOf (_L50))
        {
            Debug = "_L50 Already Exist"
        }
        Else
        {
            Method (_L50, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L50"
            }
        }

        If (CondRefOf (_L51))
        {
            Debug = "_L51 Already Exist"
        }
        Else
        {
            Method (_L51, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L51"
            }
        }

        If (CondRefOf (_L52))
        {
            Debug = "_L52 Already Exist"
        }
        Else
        {
            Method (_L52, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L52"
            }
        }

        If (CondRefOf (_L53))
        {
            Debug = "_L53 Already Exist"
        }
        Else
        {
            Method (_L53, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L53"
            }
        }

        If (CondRefOf (_L54))
        {
            Debug = "_L54 Already Exist"
        }
        Else
        {
            Method (_L54, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L54"
            }
        }

        If (CondRefOf (_L55))
        {
            Debug = "_L55 Already Exist"
        }
        Else
        {
            Method (_L55, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L55"
            }
        }

        If (CondRefOf (_L56))
        {
            Debug = "_L56 Already Exist"
        }
        Else
        {
            Method (_L56, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L56"
            }
        }

        If (CondRefOf (_L57))
        {
            Debug = "_L57 Already Exist"
        }
        Else
        {
            Method (_L57, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L57"
            }
        }

        If (CondRefOf (_L58))
        {
            Debug = "_L58 Already Exist"
        }
        Else
        {
            Method (_L58, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L58"
            }
        }

        If (CondRefOf (_L59))
        {
            Debug = "_L59 Already Exist"
        }
        Else
        {
            Method (_L59, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L59"
            }
        }

        If (CondRefOf (_L5A))
        {
            Debug = "_L5A Already Exist"
        }
        Else
        {
            Method (_L5A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L5A"
            }
        }

        If (CondRefOf (_L5B))
        {
            Debug = "_L5B Already Exist"
        }
        Else
        {
            Method (_L5B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L5B"
            }
        }

        If (CondRefOf (_L5C))
        {
            Debug = "_L5C Already Exist"
        }
        Else
        {
            Method (_L5C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L5C"
            }
        }

        If (CondRefOf (_L5D))
        {
            Debug = "_L5D Already Exist"
        }
        Else
        {
            Method (_L5D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L5D"
            }
        }

        If (CondRefOf (_L5E))
        {
            Debug = "_L5E Already Exist"
        }
        Else
        {
            Method (_L5E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L5E"
            }
        }

        If (CondRefOf (_L5F))
        {
            Debug = "_L5F Already Exist"
        }
        Else
        {
            Method (_L5F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L5F"
            }
        }

        If (CondRefOf (_L60))
        {
            Debug = "_L60 Already Exist"
        }
        Else
        {
            Method (_L60, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L60"
            }
        }

        If (CondRefOf (_L61))
        {
            Debug = "_L61 Already Exist"
        }
        Else
        {
            Method (_L61, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L61"
            }
        }

        If (CondRefOf (_L62))
        {
            Debug = "_L62 Already Exist"
        }
        Else
        {
            Method (_L62, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L62"
            }
        }

        If (CondRefOf (_L63))
        {
            Debug = "_L63 Already Exist"
        }
        Else
        {
            Method (_L63, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L63"
            }
        }

        If (CondRefOf (_L64))
        {
            Debug = "_L64 Already Exist"
        }
        Else
        {
            Method (_L64, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L64"
            }
        }

        If (CondRefOf (_L65))
        {
            Debug = "_L65 Already Exist"
        }
        Else
        {
            Method (_L65, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L65"
            }
        }

        If (CondRefOf (_L66))
        {
            Debug = "_L66 Already Exist"
        }
        Else
        {
            Method (_L66, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L66"
            }
        }

        If (CondRefOf (_L67))
        {
            Debug = "_L67 Already Exist"
        }
        Else
        {
            Method (_L67, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L67"
            }
        }

        If (CondRefOf (_L68))
        {
            Debug = "_L68 Already Exist"
        }
        Else
        {
            Method (_L68, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L68"
            }
        }

        If (CondRefOf (_L69))
        {
            Debug = "_L69 Already Exist"
        }
        Else
        {
            Method (_L69, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L69"
            }
        }

        If (CondRefOf (_L6A))
        {
            Debug = "_L6A Already Exist"
        }
        Else
        {
            Method (_L6A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L6A"
            }
        }

        If (CondRefOf (_L6B))
        {
            Debug = "_L6B Already Exist"
        }
        Else
        {
            Method (_L6B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L6B"
            }
        }

        If (CondRefOf (_L6C))
        {
            Debug = "_L6C Already Exist"
        }
        Else
        {
            Method (_L6C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L6C"
            }
        }

        If (CondRefOf (_L6D))
        {
            Debug = "_L6D Already Exist"
        }
        Else
        {
            Method (_L6D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L6D"
            }
        }

        If (CondRefOf (_L6E))
        {
            Debug = "_L6E Already Exist"
        }
        Else
        {
            Method (_L6E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L6E"
            }
        }

        If (CondRefOf (_L6F))
        {
            Debug = "_L6F Already Exist"
        }
        Else
        {
            Method (_L6F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L6F"
            }
        }

        If (CondRefOf (_L70))
        {
            Debug = "_L70 Already Exist"
        }
        Else
        {
            Method (_L70, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L70"
            }
        }

        If (CondRefOf (_L71))
        {
            Debug = "_L71 Already Exist"
        }
        Else
        {
            Method (_L71, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L71"
            }
        }

        If (CondRefOf (_L72))
        {
            Debug = "_L72 Already Exist"
        }
        Else
        {
            Method (_L72, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L72"
            }
        }

        If (CondRefOf (_L73))
        {
            Debug = "_L73 Already Exist"
        }
        Else
        {
            Method (_L73, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L73"
            }
        }

        If (CondRefOf (_L74))
        {
            Debug = "_L74 Already Exist"
        }
        Else
        {
            Method (_L74, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L74"
            }
        }

        If (CondRefOf (_L75))
        {
            Debug = "_L75 Already Exist"
        }
        Else
        {
            Method (_L75, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L75"
            }
        }

        If (CondRefOf (_L76))
        {
            Debug = "_L76 Already Exist"
        }
        Else
        {
            Method (_L76, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L76"
            }
        }

        If (CondRefOf (_L77))
        {
            Debug = "_L77 Already Exist"
        }
        Else
        {
            Method (_L77, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L77"
            }
        }

        If (CondRefOf (_L78))
        {
            Debug = "_L78 Already Exist"
        }
        Else
        {
            Method (_L78, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L78"
            }
        }

        If (CondRefOf (_L79))
        {
            Debug = "_L79 Already Exist"
        }
        Else
        {
            Method (_L79, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L79"
            }
        }

        If (CondRefOf (_L7A))
        {
            Debug = "_L7A Already Exist"
        }
        Else
        {
            Method (_L7A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L7A"
            }
        }

        If (CondRefOf (_L7B))
        {
            Debug = "_L7B Already Exist"
        }
        Else
        {
            Method (_L7B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L7B"
            }
        }

        If (CondRefOf (_L7C))
        {
            Debug = "_L7C Already Exist"
        }
        Else
        {
            Method (_L7C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L7C"
            }
        }

        If (CondRefOf (_L7D))
        {
            Debug = "_L7D Already Exist"
        }
        Else
        {
            Method (_L7D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L7D"
            }
        }

        If (CondRefOf (_L7E))
        {
            Debug = "_L7E Already Exist"
        }
        Else
        {
            Method (_L7E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L7E"
            }
        }

        If (CondRefOf (_L7F))
        {
            Debug = "_L7F Already Exist"
        }
        Else
        {
            Method (_L7F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L7F"
            }
        }

        If (CondRefOf (_L80))
        {
            Debug = "_L80 Already Exist"
        }
        Else
        {
            Method (_L80, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L80"
            }
        }

        If (CondRefOf (_L81))
        {
            Debug = "_L81 Already Exist"
        }
        Else
        {
            Method (_L81, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L81"
            }
        }

        If (CondRefOf (_L82))
        {
            Debug = "_L82 Already Exist"
        }
        Else
        {
            Method (_L82, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L82"
            }
        }

        If (CondRefOf (_L83))
        {
            Debug = "_L83 Already Exist"
        }
        Else
        {
            Method (_L83, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L83"
            }
        }

        If (CondRefOf (_L84))
        {
            Debug = "_L84 Already Exist"
        }
        Else
        {
            Method (_L84, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L84"
            }
        }

        If (CondRefOf (_L85))
        {
            Debug = "_L85 Already Exist"
        }
        Else
        {
            Method (_L85, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L85"
            }
        }

        If (CondRefOf (_L86))
        {
            Debug = "_L86 Already Exist"
        }
        Else
        {
            Method (_L86, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L86"
            }
        }

        If (CondRefOf (_L87))
        {
            Debug = "_L87 Already Exist"
        }
        Else
        {
            Method (_L87, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L87"
            }
        }

        If (CondRefOf (_L88))
        {
            Debug = "_L88 Already Exist"
        }
        Else
        {
            Method (_L88, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L88"
            }
        }

        If (CondRefOf (_L89))
        {
            Debug = "_L89 Already Exist"
        }
        Else
        {
            Method (_L89, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L89"
            }
        }

        If (CondRefOf (_L8A))
        {
            Debug = "_L8A Already Exist"
        }
        Else
        {
            Method (_L8A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L8A"
            }
        }

        If (CondRefOf (_L8B))
        {
            Debug = "_L8B Already Exist"
        }
        Else
        {
            Method (_L8B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L8B"
            }
        }

        If (CondRefOf (_L8C))
        {
            Debug = "_L8C Already Exist"
        }
        Else
        {
            Method (_L8C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L8C"
            }
        }

        If (CondRefOf (_L8D))
        {
            Debug = "_L8D Already Exist"
        }
        Else
        {
            Method (_L8D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L8D"
            }
        }

        If (CondRefOf (_L8E))
        {
            Debug = "_L8E Already Exist"
        }
        Else
        {
            Method (_L8E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L8E"
            }
        }

        If (CondRefOf (_L8F))
        {
            Debug = "_L8F Already Exist"
        }
        Else
        {
            Method (_L8F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L8F"
            }
        }

        If (CondRefOf (_L90))
        {
            Debug = "_L90 Already Exist"
        }
        Else
        {
            Method (_L90, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L90"
            }
        }

        If (CondRefOf (_L91))
        {
            Debug = "_L91 Already Exist"
        }
        Else
        {
            Method (_L91, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L91"
            }
        }

        If (CondRefOf (_L92))
        {
            Debug = "_L92 Already Exist"
        }
        Else
        {
            Method (_L92, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L92"
            }
        }

        If (CondRefOf (_L93))
        {
            Debug = "_L93 Already Exist"
        }
        Else
        {
            Method (_L93, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L93"
            }
        }

        If (CondRefOf (_L94))
        {
            Debug = "_L94 Already Exist"
        }
        Else
        {
            Method (_L94, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L94"
            }
        }

        If (CondRefOf (_L95))
        {
            Debug = "_L95 Already Exist"
        }
        Else
        {
            Method (_L95, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L95"
            }
        }

        If (CondRefOf (_L96))
        {
            Debug = "_L96 Already Exist"
        }
        Else
        {
            Method (_L96, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L96"
            }
        }

        If (CondRefOf (_L97))
        {
            Debug = "_L97 Already Exist"
        }
        Else
        {
            Method (_L97, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L97"
            }
        }

        If (CondRefOf (_L98))
        {
            Debug = "_L98 Already Exist"
        }
        Else
        {
            Method (_L98, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L98"
            }
        }

        If (CondRefOf (_L99))
        {
            Debug = "_L99 Already Exist"
        }
        Else
        {
            Method (_L99, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L99"
            }
        }

        If (CondRefOf (_L9A))
        {
            Debug = "_L9A Already Exist"
        }
        Else
        {
            Method (_L9A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L9A"
            }
        }

        If (CondRefOf (_L9B))
        {
            Debug = "_L9B Already Exist"
        }
        Else
        {
            Method (_L9B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L9B"
            }
        }

        If (CondRefOf (_L9C))
        {
            Debug = "_L9C Already Exist"
        }
        Else
        {
            Method (_L9C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L9C"
            }
        }

        If (CondRefOf (_L9D))
        {
            Debug = "_L9D Already Exist"
        }
        Else
        {
            Method (_L9D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L9D"
            }
        }

        If (CondRefOf (_L9E))
        {
            Debug = "_L9E Already Exist"
        }
        Else
        {
            Method (_L9E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L9E"
            }
        }

        If (CondRefOf (_L9F))
        {
            Debug = "_L9F Already Exist"
        }
        Else
        {
            Method (_L9F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _L9F"
            }
        }

        If (CondRefOf (_LA0))
        {
            Debug = "_LA0 Already Exist"
        }
        Else
        {
            Method (_LA0, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA0"
            }
        }

        If (CondRefOf (_LA1))
        {
            Debug = "_LA1 Already Exist"
        }
        Else
        {
            Method (_LA1, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA1"
            }
        }

        If (CondRefOf (_LA2))
        {
            Debug = "_LA2 Already Exist"
        }
        Else
        {
            Method (_LA2, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA2"
            }
        }

        If (CondRefOf (_LA3))
        {
            Debug = "_LA3 Already Exist"
        }
        Else
        {
            Method (_LA3, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA3"
            }
        }

        If (CondRefOf (_LA4))
        {
            Debug = "_LA4 Already Exist"
        }
        Else
        {
            Method (_LA4, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA4"
            }
        }

        If (CondRefOf (_LA5))
        {
            Debug = "_LA5 Already Exist"
        }
        Else
        {
            Method (_LA5, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA5"
            }
        }

        If (CondRefOf (_LA6))
        {
            Debug = "_LA6 Already Exist"
        }
        Else
        {
            Method (_LA6, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA6"
            }
        }

        If (CondRefOf (_LA7))
        {
            Debug = "_LA7 Already Exist"
        }
        Else
        {
            Method (_LA7, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA7"
            }
        }

        If (CondRefOf (_LA8))
        {
            Debug = "_LA8 Already Exist"
        }
        Else
        {
            Method (_LA8, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA8"
            }
        }

        If (CondRefOf (_LA9))
        {
            Debug = "_LA9 Already Exist"
        }
        Else
        {
            Method (_LA9, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LA9"
            }
        }

        If (CondRefOf (_LAA))
        {
            Debug = "_LAA Already Exist"
        }
        Else
        {
            Method (_LAA, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LAA"
            }
        }

        If (CondRefOf (_LAB))
        {
            Debug = "_LAB Already Exist"
        }
        Else
        {
            Method (_LAB, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LAB"
            }
        }

        If (CondRefOf (_LAC))
        {
            Debug = "_LAC Already Exist"
        }
        Else
        {
            Method (_LAC, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LAC"
            }
        }

        If (CondRefOf (_LAD))
        {
            Debug = "_LAD Already Exist"
        }
        Else
        {
            Method (_LAD, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LAD"
            }
        }

        If (CondRefOf (_LAE))
        {
            Debug = "_LAE Already Exist"
        }
        Else
        {
            Method (_LAE, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LAE"
            }
        }

        If (CondRefOf (_LAF))
        {
            Debug = "_LAF Already Exist"
        }
        Else
        {
            Method (_LAF, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LAF"
            }
        }

        If (CondRefOf (_LB0))
        {
            Debug = "_LB0 Already Exist"
        }
        Else
        {
            Method (_LB0, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB0"
            }
        }

        If (CondRefOf (_LB1))
        {
            Debug = "_LB1 Already Exist"
        }
        Else
        {
            Method (_LB1, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB1"
            }
        }

        If (CondRefOf (_LB2))
        {
            Debug = "_LB2 Already Exist"
        }
        Else
        {
            Method (_LB2, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB2"
            }
        }

        If (CondRefOf (_LB3))
        {
            Debug = "_LB3 Already Exist"
        }
        Else
        {
            Method (_LB3, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB3"
            }
        }

        If (CondRefOf (_LB4))
        {
            Debug = "_LB4 Already Exist"
        }
        Else
        {
            Method (_LB4, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB4"
            }
        }

        If (CondRefOf (_LB5))
        {
            Debug = "_LB5 Already Exist"
        }
        Else
        {
            Method (_LB5, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB5"
            }
        }

        If (CondRefOf (_LB6))
        {
            Debug = "_LB6 Already Exist"
        }
        Else
        {
            Method (_LB6, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB6"
            }
        }

        If (CondRefOf (_LB7))
        {
            Debug = "_LB7 Already Exist"
        }
        Else
        {
            Method (_LB7, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB7"
            }
        }

        If (CondRefOf (_LB8))
        {
            Debug = "_LB8 Already Exist"
        }
        Else
        {
            Method (_LB8, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB8"
            }
        }

        If (CondRefOf (_LB9))
        {
            Debug = "_LB9 Already Exist"
        }
        Else
        {
            Method (_LB9, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LB9"
            }
        }

        If (CondRefOf (_LBA))
        {
            Debug = "_LBA Already Exist"
        }
        Else
        {
            Method (_LBA, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LBA"
            }
        }

        If (CondRefOf (_LBB))
        {
            Debug = "_LBB Already Exist"
        }
        Else
        {
            Method (_LBB, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LBB"
            }
        }

        If (CondRefOf (_LBC))
        {
            Debug = "_LBC Already Exist"
        }
        Else
        {
            Method (_LBC, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LBC"
            }
        }

        If (CondRefOf (_LBD))
        {
            Debug = "_LBD Already Exist"
        }
        Else
        {
            Method (_LBD, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LBD"
            }
        }

        If (CondRefOf (_LBE))
        {
            Debug = "_LBE Already Exist"
        }
        Else
        {
            Method (_LBE, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LBE"
            }
        }

        If (CondRefOf (_LBF))
        {
            Debug = "_LBF Already Exist"
        }
        Else
        {
            Method (_LBF, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LBF"
            }
        }

        If (CondRefOf (_LC0))
        {
            Debug = "_LC0 Already Exist"
        }
        Else
        {
            Method (_LC0, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC0"
            }
        }

        If (CondRefOf (_LC1))
        {
            Debug = "_LC1 Already Exist"
        }
        Else
        {
            Method (_LC1, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC1"
            }
        }

        If (CondRefOf (_LC2))
        {
            Debug = "_LC2 Already Exist"
        }
        Else
        {
            Method (_LC2, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC2"
            }
        }

        If (CondRefOf (_LC3))
        {
            Debug = "_LC3 Already Exist"
        }
        Else
        {
            Method (_LC3, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC3"
            }
        }

        If (CondRefOf (_LC4))
        {
            Debug = "_LC4 Already Exist"
        }
        Else
        {
            Method (_LC4, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC4"
            }
        }

        If (CondRefOf (_LC5))
        {
            Debug = "_LC5 Already Exist"
        }
        Else
        {
            Method (_LC5, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC5"
            }
        }

        If (CondRefOf (_LC6))
        {
            Debug = "_LC6 Already Exist"
        }
        Else
        {
            Method (_LC6, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC6"
            }
        }

        If (CondRefOf (_LC7))
        {
            Debug = "_LC7 Already Exist"
        }
        Else
        {
            Method (_LC7, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC7"
            }
        }

        If (CondRefOf (_LC8))
        {
            Debug = "_LC8 Already Exist"
        }
        Else
        {
            Method (_LC8, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC8"
            }
        }

        If (CondRefOf (_LC9))
        {
            Debug = "_LC9 Already Exist"
        }
        Else
        {
            Method (_LC9, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LC9"
            }
        }

        If (CondRefOf (_LCA))
        {
            Debug = "_LCA Already Exist"
        }
        Else
        {
            Method (_LCA, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LCA"
            }
        }

        If (CondRefOf (_LCB))
        {
            Debug = "_LCB Already Exist"
        }
        Else
        {
            Method (_LCB, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LCB"
            }
        }

        If (CondRefOf (_LCC))
        {
            Debug = "_LCC Already Exist"
        }
        Else
        {
            Method (_LCC, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LCC"
            }
        }

        If (CondRefOf (_LCD))
        {
            Debug = "_LCD Already Exist"
        }
        Else
        {
            Method (_LCD, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LCD"
            }
        }

        If (CondRefOf (_LCE))
        {
            Debug = "_LCE Already Exist"
        }
        Else
        {
            Method (_LCE, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LCE"
            }
        }

        If (CondRefOf (_LCF))
        {
            Debug = "_LCF Already Exist"
        }
        Else
        {
            Method (_LCF, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LCF"
            }
        }

        If (CondRefOf (_LD0))
        {
            Debug = "_LD0 Already Exist"
        }
        Else
        {
            Method (_LD0, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD0"
            }
        }

        If (CondRefOf (_LD1))
        {
            Debug = "_LD1 Already Exist"
        }
        Else
        {
            Method (_LD1, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD1"
            }
        }

        If (CondRefOf (_LD2))
        {
            Debug = "_LD2 Already Exist"
        }
        Else
        {
            Method (_LD2, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD2"
            }
        }

        If (CondRefOf (_LD3))
        {
            Debug = "_LD3 Already Exist"
        }
        Else
        {
            Method (_LD3, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD3"
            }
        }

        If (CondRefOf (_LD4))
        {
            Debug = "_LD4 Already Exist"
        }
        Else
        {
            Method (_LD4, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD4"
            }
        }

        If (CondRefOf (_LD5))
        {
            Debug = "_LD5 Already Exist"
        }
        Else
        {
            Method (_LD5, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD5"
            }
        }

        If (CondRefOf (_LD6))
        {
            Debug = "_LD6 Already Exist"
        }
        Else
        {
            Method (_LD6, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD6"
            }
        }

        If (CondRefOf (_LD7))
        {
            Debug = "_LD7 Already Exist"
        }
        Else
        {
            Method (_LD7, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD7"
            }
        }

        If (CondRefOf (_LD8))
        {
            Debug = "_LD8 Already Exist"
        }
        Else
        {
            Method (_LD8, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD8"
            }
        }

        If (CondRefOf (_LD9))
        {
            Debug = "_LD9 Already Exist"
        }
        Else
        {
            Method (_LD9, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LD9"
            }
        }

        If (CondRefOf (_LDA))
        {
            Debug = "_LDA Already Exist"
        }
        Else
        {
            Method (_LDA, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LDA"
            }
        }

        If (CondRefOf (_LDB))
        {
            Debug = "_LDB Already Exist"
        }
        Else
        {
            Method (_LDB, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LDB"
            }
        }

        If (CondRefOf (_LDC))
        {
            Debug = "_LDC Already Exist"
        }
        Else
        {
            Method (_LDC, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LDC"
            }
        }

        If (CondRefOf (_LDD))
        {
            Debug = "_LDD Already Exist"
        }
        Else
        {
            Method (_LDD, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LDD"
            }
        }

        If (CondRefOf (_LDE))
        {
            Debug = "_LDE Already Exist"
        }
        Else
        {
            Method (_LDE, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LDE"
            }
        }

        If (CondRefOf (_LDF))
        {
            Debug = "_LDF Already Exist"
        }
        Else
        {
            Method (_LDF, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LDF"
            }
        }

        If (CondRefOf (_LE0))
        {
            Debug = "_LE0 Already Exist"
        }
        Else
        {
            Method (_LE0, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE0"
            }
        }

        If (CondRefOf (_LE1))
        {
            Debug = "_LE1 Already Exist"
        }
        Else
        {
            Method (_LE1, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE1"
            }
        }

        If (CondRefOf (_LE2))
        {
            Debug = "_LE2 Already Exist"
        }
        Else
        {
            Method (_LE2, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE2"
            }
        }

        If (CondRefOf (_LE3))
        {
            Debug = "_LE3 Already Exist"
        }
        Else
        {
            Method (_LE3, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE3"
            }
        }

        If (CondRefOf (_LE4))
        {
            Debug = "_LE4 Already Exist"
        }
        Else
        {
            Method (_LE4, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE4"
            }
        }

        If (CondRefOf (_LE5))
        {
            Debug = "_LE5 Already Exist"
        }
        Else
        {
            Method (_LE5, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE5"
            }
        }

        If (CondRefOf (_LE6))
        {
            Debug = "_LE6 Already Exist"
        }
        Else
        {
            Method (_LE6, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE6"
            }
        }

        If (CondRefOf (_LE7))
        {
            Debug = "_LE7 Already Exist"
        }
        Else
        {
            Method (_LE7, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE7"
            }
        }

        If (CondRefOf (_LE8))
        {
            Debug = "_LE8 Already Exist"
        }
        Else
        {
            Method (_LE8, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE8"
            }
        }

        If (CondRefOf (_LE9))
        {
            Debug = "_LE9 Already Exist"
        }
        Else
        {
            Method (_LE9, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LE9"
            }
        }

        If (CondRefOf (_LEA))
        {
            Debug = "_LEA Already Exist"
        }
        Else
        {
            Method (_LEA, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LEA"
            }
        }

        If (CondRefOf (_LEB))
        {
            Debug = "_LEB Already Exist"
        }
        Else
        {
            Method (_LEB, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LEB"
            }
        }

        If (CondRefOf (_LEC))
        {
            Debug = "_LEC Already Exist"
        }
        Else
        {
            Method (_LEC, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LEC"
            }
        }

        If (CondRefOf (_LED))
        {
            Debug = "_LED Already Exist"
        }
        Else
        {
            Method (_LED, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LED"
            }
        }

        If (CondRefOf (_LEE))
        {
            Debug = "_LEE Already Exist"
        }
        Else
        {
            Method (_LEE, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LEE"
            }
        }

        If (CondRefOf (_LEF))
        {
            Debug = "_LEF Already Exist"
        }
        Else
        {
            Method (_LEF, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LEF"
            }
        }

        If (CondRefOf (_LF0))
        {
            Debug = "_LF0 Already Exist"
        }
        Else
        {
            Method (_LF0, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF0"
            }
        }

        If (CondRefOf (_LF1))
        {
            Debug = "_LF1 Already Exist"
        }
        Else
        {
            Method (_LF1, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF1"
            }
        }

        If (CondRefOf (_LF2))
        {
            Debug = "_LF2 Already Exist"
        }
        Else
        {
            Method (_LF2, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF2"
            }
        }

        If (CondRefOf (_LF3))
        {
            Debug = "_LF3 Already Exist"
        }
        Else
        {
            Method (_LF3, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF3"
            }
        }

        If (CondRefOf (_LF4))
        {
            Debug = "_LF4 Already Exist"
        }
        Else
        {
            Method (_LF4, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF4"
            }
        }

        If (CondRefOf (_LF5))
        {
            Debug = "_LF5 Already Exist"
        }
        Else
        {
            Method (_LF5, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF5"
            }
        }

        If (CondRefOf (_LF6))
        {
            Debug = "_LF6 Already Exist"
        }
        Else
        {
            Method (_LF6, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF6"
            }
        }

        If (CondRefOf (_LF7))
        {
            Debug = "_LF7 Already Exist"
        }
        Else
        {
            Method (_LF7, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF7"
            }
        }

        If (CondRefOf (_LF8))
        {
            Debug = "_LF8 Already Exist"
        }
        Else
        {
            Method (_LF8, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF8"
            }
        }

        If (CondRefOf (_LF9))
        {
            Debug = "_LF9 Already Exist"
        }
        Else
        {
            Method (_LF9, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LF9"
            }
        }

        If (CondRefOf (_LFA))
        {
            Debug = "_LFA Already Exist"
        }
        Else
        {
            Method (_LFA, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LFA"
            }
        }

        If (CondRefOf (_LFB))
        {
            Debug = "_LFB Already Exist"
        }
        Else
        {
            Method (_LFB, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LFB"
            }
        }

        If (CondRefOf (_LFC))
        {
            Debug = "_LFC Already Exist"
        }
        Else
        {
            Method (_LFC, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LFC"
            }
        }

        If (CondRefOf (_LFD))
        {
            Debug = "_LFD Already Exist"
        }
        Else
        {
            Method (_LFD, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LFD"
            }
        }

        If (CondRefOf (_LFE))
        {
            Debug = "_LFE Already Exist"
        }
        Else
        {
            Method (_LFE, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LFE"
            }
        }

        If (CondRefOf (_LFF))
        {
            Debug = "_LFF Already Exist"
        }
        Else
        {
            Method (_LFF, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _LFF"
            }
        }

        If (CondRefOf (_E01))
        {
            Debug = "_E01 Already Exist"
        }
        Else
        {
            Method (_E01, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E01"
            }
        }

        If (CondRefOf (_E02))
        {
            Debug = "_E02 Already Exist"
        }
        Else
        {
            Method (_E02, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E02"
            }
        }

        If (CondRefOf (_E03))
        {
            Debug = "_E03 Already Exist"
        }
        Else
        {
            Method (_E03, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E03"
            }
        }

        If (CondRefOf (_E04))
        {
            Debug = "_E04 Already Exist"
        }
        Else
        {
            Method (_E04, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E04"
            }
        }

        If (CondRefOf (_E05))
        {
            Debug = "_E05 Already Exist"
        }
        Else
        {
            Method (_E05, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E05"
            }
        }

        If (CondRefOf (_E06))
        {
            Debug = "_E06 Already Exist"
        }
        Else
        {
            Method (_E06, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E06"
            }
        }

        If (CondRefOf (_E07))
        {
            Debug = "_E07 Already Exist"
        }
        Else
        {
            Method (_E07, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E07"
            }
        }

        If (CondRefOf (_E08))
        {
            Debug = "_E08 Already Exist"
        }
        Else
        {
            Method (_E08, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E08"
            }
        }

        If (CondRefOf (_E09))
        {
            Debug = "_E09 Already Exist"
        }
        Else
        {
            Method (_E09, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E09"
            }
        }

        If (CondRefOf (_E0A))
        {
            Debug = "_E0A Already Exist"
        }
        Else
        {
            Method (_E0A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E0A"
            }
        }

        If (CondRefOf (_E0B))
        {
            Debug = "_E0B Already Exist"
        }
        Else
        {
            Method (_E0B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E0B"
            }
        }

        If (CondRefOf (_E0C))
        {
            Debug = "_E0C Already Exist"
        }
        Else
        {
            Method (_E0C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E0C"
            }
        }

        If (CondRefOf (_E0D))
        {
            Debug = "_E0D Already Exist"
        }
        Else
        {
            Method (_E0D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E0D"
            }
        }

        If (CondRefOf (_E0E))
        {
            Debug = "_E0E Already Exist"
        }
        Else
        {
            Method (_E0E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E0E"
            }
        }

        If (CondRefOf (_E0F))
        {
            Debug = "_E0F Already Exist"
        }
        Else
        {
            Method (_E0F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E0F"
            }
        }

        If (CondRefOf (_E10))
        {
            Debug = "_E10 Already Exist"
        }
        Else
        {
            Method (_E10, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E10"
            }
        }

        If (CondRefOf (_E11))
        {
            Debug = "_E11 Already Exist"
        }
        Else
        {
            Method (_E11, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E11"
            }
        }

        If (CondRefOf (_E12))
        {
            Debug = "_E12 Already Exist"
        }
        Else
        {
            Method (_E12, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E12"
            }
        }

        If (CondRefOf (_E13))
        {
            Debug = "_E13 Already Exist"
        }
        Else
        {
            Method (_E13, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E13"
            }
        }

        If (CondRefOf (_E14))
        {
            Debug = "_E14 Already Exist"
        }
        Else
        {
            Method (_E14, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E14"
            }
        }

        If (CondRefOf (_E15))
        {
            Debug = "_E15 Already Exist"
        }
        Else
        {
            Method (_E15, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E15"
            }
        }

        If (CondRefOf (_E16))
        {
            Debug = "_E16 Already Exist"
        }
        Else
        {
            Method (_E16, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E16"
            }
        }

        If (CondRefOf (_E17))
        {
            Debug = "_E17 Already Exist"
        }
        Else
        {
            Method (_E17, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E17"
            }
        }

        If (CondRefOf (_E18))
        {
            Debug = "_E18 Already Exist"
        }
        Else
        {
            Method (_E18, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E18"
            }
        }

        If (CondRefOf (_E19))
        {
            Debug = "_E19 Already Exist"
        }
        Else
        {
            Method (_E19, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E19"
            }
        }

        If (CondRefOf (_E1A))
        {
            Debug = "_E1A Already Exist"
        }
        Else
        {
            Method (_E1A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E1A"
            }
        }

        If (CondRefOf (_E1B))
        {
            Debug = "_E1B Already Exist"
        }
        Else
        {
            Method (_E1B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E1B"
            }
        }

        If (CondRefOf (_E1C))
        {
            Debug = "_E1C Already Exist"
        }
        Else
        {
            Method (_E1C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E1C"
            }
        }

        If (CondRefOf (_E1D))
        {
            Debug = "_E1D Already Exist"
        }
        Else
        {
            Method (_E1D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E1D"
            }
        }

        If (CondRefOf (_E1E))
        {
            Debug = "_E1E Already Exist"
        }
        Else
        {
            Method (_E1E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E1E"
            }
        }

        If (CondRefOf (_E1F))
        {
            Debug = "_E1F Already Exist"
        }
        Else
        {
            Method (_E1F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E1F"
            }
        }

        If (CondRefOf (_E20))
        {
            Debug = "_E20 Already Exist"
        }
        Else
        {
            Method (_E20, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E20"
            }
        }

        If (CondRefOf (_E21))
        {
            Debug = "_E21 Already Exist"
        }
        Else
        {
            Method (_E21, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E21"
            }
        }

        If (CondRefOf (_E22))
        {
            Debug = "_E22 Already Exist"
        }
        Else
        {
            Method (_E22, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E22"
            }
        }

        If (CondRefOf (_E23))
        {
            Debug = "_E23 Already Exist"
        }
        Else
        {
            Method (_E23, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E23"
            }
        }

        If (CondRefOf (_E24))
        {
            Debug = "_E24 Already Exist"
        }
        Else
        {
            Method (_E24, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E24"
            }
        }

        If (CondRefOf (_E25))
        {
            Debug = "_E25 Already Exist"
        }
        Else
        {
            Method (_E25, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E25"
            }
        }

        If (CondRefOf (_E26))
        {
            Debug = "_E26 Already Exist"
        }
        Else
        {
            Method (_E26, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E26"
            }
        }

        If (CondRefOf (_E27))
        {
            Debug = "_E27 Already Exist"
        }
        Else
        {
            Method (_E27, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E27"
            }
        }

        If (CondRefOf (_E28))
        {
            Debug = "_E28 Already Exist"
        }
        Else
        {
            Method (_E28, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E28"
            }
        }

        If (CondRefOf (_E29))
        {
            Debug = "_E29 Already Exist"
        }
        Else
        {
            Method (_E29, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E29"
            }
        }

        If (CondRefOf (_E2A))
        {
            Debug = "_E2A Already Exist"
        }
        Else
        {
            Method (_E2A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E2A"
            }
        }

        If (CondRefOf (_E2B))
        {
            Debug = "_E2B Already Exist"
        }
        Else
        {
            Method (_E2B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E2B"
            }
        }

        If (CondRefOf (_E2C))
        {
            Debug = "_E2C Already Exist"
        }
        Else
        {
            Method (_E2C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E2C"
            }
        }

        If (CondRefOf (_E2D))
        {
            Debug = "_E2D Already Exist"
        }
        Else
        {
            Method (_E2D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E2D"
            }
        }

        If (CondRefOf (_E2E))
        {
            Debug = "_E2E Already Exist"
        }
        Else
        {
            Method (_E2E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E2E"
            }
        }

        If (CondRefOf (_E2F))
        {
            Debug = "_E2F Already Exist"
        }
        Else
        {
            Method (_E2F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E2F"
            }
        }

        If (CondRefOf (_E30))
        {
            Debug = "_E30 Already Exist"
        }
        Else
        {
            Method (_E30, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E30"
            }
        }

        If (CondRefOf (_E31))
        {
            Debug = "_E31 Already Exist"
        }
        Else
        {
            Method (_E31, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E31"
            }
        }

        If (CondRefOf (_E32))
        {
            Debug = "_E32 Already Exist"
        }
        Else
        {
            Method (_E32, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E32"
            }
        }

        If (CondRefOf (_E33))
        {
            Debug = "_E33 Already Exist"
        }
        Else
        {
            Method (_E33, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E33"
            }
        }

        If (CondRefOf (_E34))
        {
            Debug = "_E34 Already Exist"
        }
        Else
        {
            Method (_E34, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E34"
            }
        }

        If (CondRefOf (_E35))
        {
            Debug = "_E35 Already Exist"
        }
        Else
        {
            Method (_E35, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E35"
            }
        }

        If (CondRefOf (_E36))
        {
            Debug = "_E36 Already Exist"
        }
        Else
        {
            Method (_E36, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E36"
            }
        }

        If (CondRefOf (_E37))
        {
            Debug = "_E37 Already Exist"
        }
        Else
        {
            Method (_E37, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E37"
            }
        }

        If (CondRefOf (_E38))
        {
            Debug = "_E38 Already Exist"
        }
        Else
        {
            Method (_E38, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E38"
            }
        }

        If (CondRefOf (_E39))
        {
            Debug = "_E39 Already Exist"
        }
        Else
        {
            Method (_E39, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E39"
            }
        }

        If (CondRefOf (_E3A))
        {
            Debug = "_E3A Already Exist"
        }
        Else
        {
            Method (_E3A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E3A"
            }
        }

        If (CondRefOf (_E3B))
        {
            Debug = "_E3B Already Exist"
        }
        Else
        {
            Method (_E3B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E3B"
            }
        }

        If (CondRefOf (_E3C))
        {
            Debug = "_E3C Already Exist"
        }
        Else
        {
            Method (_E3C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E3C"
            }
        }

        If (CondRefOf (_E3D))
        {
            Debug = "_E3D Already Exist"
        }
        Else
        {
            Method (_E3D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E3D"
            }
        }

        If (CondRefOf (_E3E))
        {
            Debug = "_E3E Already Exist"
        }
        Else
        {
            Method (_E3E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E3E"
            }
        }

        If (CondRefOf (_E3F))
        {
            Debug = "_E3F Already Exist"
        }
        Else
        {
            Method (_E3F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E3F"
            }
        }

        If (CondRefOf (_E40))
        {
            Debug = "_E40 Already Exist"
        }
        Else
        {
            Method (_E40, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E40"
            }
        }

        If (CondRefOf (_E41))
        {
            Debug = "_E41 Already Exist"
        }
        Else
        {
            Method (_E41, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E41"
            }
        }

        If (CondRefOf (_E42))
        {
            Debug = "_E42 Already Exist"
        }
        Else
        {
            Method (_E42, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E42"
            }
        }

        If (CondRefOf (_E43))
        {
            Debug = "_E43 Already Exist"
        }
        Else
        {
            Method (_E43, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E43"
            }
        }

        If (CondRefOf (_E44))
        {
            Debug = "_E44 Already Exist"
        }
        Else
        {
            Method (_E44, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E44"
            }
        }

        If (CondRefOf (_E45))
        {
            Debug = "_E45 Already Exist"
        }
        Else
        {
            Method (_E45, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E45"
            }
        }

        If (CondRefOf (_E46))
        {
            Debug = "_E46 Already Exist"
        }
        Else
        {
            Method (_E46, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E46"
            }
        }

        If (CondRefOf (_E47))
        {
            Debug = "_E47 Already Exist"
        }
        Else
        {
            Method (_E47, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E47"
            }
        }

        If (CondRefOf (_E48))
        {
            Debug = "_E48 Already Exist"
        }
        Else
        {
            Method (_E48, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E48"
            }
        }

        If (CondRefOf (_E49))
        {
            Debug = "_E49 Already Exist"
        }
        Else
        {
            Method (_E49, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E49"
            }
        }

        If (CondRefOf (_E4A))
        {
            Debug = "_E4A Already Exist"
        }
        Else
        {
            Method (_E4A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E4A"
            }
        }

        If (CondRefOf (_E4B))
        {
            Debug = "_E4B Already Exist"
        }
        Else
        {
            Method (_E4B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E4B"
            }
        }

        If (CondRefOf (_E4C))
        {
            Debug = "_E4C Already Exist"
        }
        Else
        {
            Method (_E4C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E4C"
            }
        }

        If (CondRefOf (_E4D))
        {
            Debug = "_E4D Already Exist"
        }
        Else
        {
            Method (_E4D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E4D"
            }
        }

        If (CondRefOf (_E4E))
        {
            Debug = "_E4E Already Exist"
        }
        Else
        {
            Method (_E4E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E4E"
            }
        }

        If (CondRefOf (_E4F))
        {
            Debug = "_E4F Already Exist"
        }
        Else
        {
            Method (_E4F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E4F"
            }
        }

        If (CondRefOf (_E50))
        {
            Debug = "_E50 Already Exist"
        }
        Else
        {
            Method (_E50, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E50"
            }
        }

        If (CondRefOf (_E51))
        {
            Debug = "_E51 Already Exist"
        }
        Else
        {
            Method (_E51, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E51"
            }
        }

        If (CondRefOf (_E52))
        {
            Debug = "_E52 Already Exist"
        }
        Else
        {
            Method (_E52, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E52"
            }
        }

        If (CondRefOf (_E53))
        {
            Debug = "_E53 Already Exist"
        }
        Else
        {
            Method (_E53, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E53"
            }
        }

        If (CondRefOf (_E54))
        {
            Debug = "_E54 Already Exist"
        }
        Else
        {
            Method (_E54, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E54"
            }
        }

        If (CondRefOf (_E55))
        {
            Debug = "_E55 Already Exist"
        }
        Else
        {
            Method (_E55, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E55"
            }
        }

        If (CondRefOf (_E56))
        {
            Debug = "_E56 Already Exist"
        }
        Else
        {
            Method (_E56, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E56"
            }
        }

        If (CondRefOf (_E57))
        {
            Debug = "_E57 Already Exist"
        }
        Else
        {
            Method (_E57, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E57"
            }
        }

        If (CondRefOf (_E58))
        {
            Debug = "_E58 Already Exist"
        }
        Else
        {
            Method (_E58, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E58"
            }
        }

        If (CondRefOf (_E59))
        {
            Debug = "_E59 Already Exist"
        }
        Else
        {
            Method (_E59, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E59"
            }
        }

        If (CondRefOf (_E5A))
        {
            Debug = "_E5A Already Exist"
        }
        Else
        {
            Method (_E5A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E5A"
            }
        }

        If (CondRefOf (_E5B))
        {
            Debug = "_E5B Already Exist"
        }
        Else
        {
            Method (_E5B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E5B"
            }
        }

        If (CondRefOf (_E5C))
        {
            Debug = "_E5C Already Exist"
        }
        Else
        {
            Method (_E5C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E5C"
            }
        }

        If (CondRefOf (_E5D))
        {
            Debug = "_E5D Already Exist"
        }
        Else
        {
            Method (_E5D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E5D"
            }
        }

        If (CondRefOf (_E5E))
        {
            Debug = "_E5E Already Exist"
        }
        Else
        {
            Method (_E5E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E5E"
            }
        }

        If (CondRefOf (_E5F))
        {
            Debug = "_E5F Already Exist"
        }
        Else
        {
            Method (_E5F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E5F"
            }
        }

        If (CondRefOf (_E60))
        {
            Debug = "_E60 Already Exist"
        }
        Else
        {
            Method (_E60, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E60"
            }
        }

        If (CondRefOf (_E61))
        {
            Debug = "_E61 Already Exist"
        }
        Else
        {
            Method (_E61, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E61"
            }
        }

        If (CondRefOf (_E62))
        {
            Debug = "_E62 Already Exist"
        }
        Else
        {
            Method (_E62, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E62"
            }
        }

        If (CondRefOf (_E63))
        {
            Debug = "_E63 Already Exist"
        }
        Else
        {
            Method (_E63, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E63"
            }
        }

        If (CondRefOf (_E64))
        {
            Debug = "_E64 Already Exist"
        }
        Else
        {
            Method (_E64, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E64"
            }
        }

        If (CondRefOf (_E65))
        {
            Debug = "_E65 Already Exist"
        }
        Else
        {
            Method (_E65, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E65"
            }
        }

        If (CondRefOf (_E66))
        {
            Debug = "_E66 Already Exist"
        }
        Else
        {
            Method (_E66, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E66"
            }
        }

        If (CondRefOf (_E67))
        {
            Debug = "_E67 Already Exist"
        }
        Else
        {
            Method (_E67, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E67"
            }
        }

        If (CondRefOf (_E68))
        {
            Debug = "_E68 Already Exist"
        }
        Else
        {
            Method (_E68, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E68"
            }
        }

        If (CondRefOf (_E69))
        {
            Debug = "_E69 Already Exist"
        }
        Else
        {
            Method (_E69, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E69"
            }
        }

        If (CondRefOf (_E6A))
        {
            Debug = "_E6A Already Exist"
        }
        Else
        {
            Method (_E6A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E6A"
            }
        }

        If (CondRefOf (_E6B))
        {
            Debug = "_E6B Already Exist"
        }
        Else
        {
            Method (_E6B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E6B"
            }
        }

        If (CondRefOf (_E6C))
        {
            Debug = "_E6C Already Exist"
        }
        Else
        {
            Method (_E6C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E6C"
            }
        }

        If (CondRefOf (_E6D))
        {
            Debug = "_E6D Already Exist"
        }
        Else
        {
            Method (_E6D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E6D"
            }
        }

        If (CondRefOf (_E6E))
        {
            Debug = "_E6E Already Exist"
        }
        Else
        {
            Method (_E6E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E6E"
            }
        }

        If (CondRefOf (_E6F))
        {
            Debug = "_E6F Already Exist"
        }
        Else
        {
            Method (_E6F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E6F"
            }
        }

        If (CondRefOf (_E70))
        {
            Debug = "_E70 Already Exist"
        }
        Else
        {
            Method (_E70, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E70"
            }
        }

        If (CondRefOf (_E71))
        {
            Debug = "_E71 Already Exist"
        }
        Else
        {
            Method (_E71, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E71"
            }
        }

        If (CondRefOf (_E72))
        {
            Debug = "_E72 Already Exist"
        }
        Else
        {
            Method (_E72, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E72"
            }
        }

        If (CondRefOf (_E73))
        {
            Debug = "_E73 Already Exist"
        }
        Else
        {
            Method (_E73, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E73"
            }
        }

        If (CondRefOf (_E74))
        {
            Debug = "_E74 Already Exist"
        }
        Else
        {
            Method (_E74, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E74"
            }
        }

        If (CondRefOf (_E75))
        {
            Debug = "_E75 Already Exist"
        }
        Else
        {
            Method (_E75, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E75"
            }
        }

        If (CondRefOf (_E76))
        {
            Debug = "_E76 Already Exist"
        }
        Else
        {
            Method (_E76, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E76"
            }
        }

        If (CondRefOf (_E77))
        {
            Debug = "_E77 Already Exist"
        }
        Else
        {
            Method (_E77, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E77"
            }
        }

        If (CondRefOf (_E78))
        {
            Debug = "_E78 Already Exist"
        }
        Else
        {
            Method (_E78, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E78"
            }
        }

        If (CondRefOf (_E79))
        {
            Debug = "_E79 Already Exist"
        }
        Else
        {
            Method (_E79, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E79"
            }
        }

        If (CondRefOf (_E7A))
        {
            Debug = "_E7A Already Exist"
        }
        Else
        {
            Method (_E7A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E7A"
            }
        }

        If (CondRefOf (_E7B))
        {
            Debug = "_E7B Already Exist"
        }
        Else
        {
            Method (_E7B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E7B"
            }
        }

        If (CondRefOf (_E7C))
        {
            Debug = "_E7C Already Exist"
        }
        Else
        {
            Method (_E7C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E7C"
            }
        }

        If (CondRefOf (_E7D))
        {
            Debug = "_E7D Already Exist"
        }
        Else
        {
            Method (_E7D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E7D"
            }
        }

        If (CondRefOf (_E7E))
        {
            Debug = "_E7E Already Exist"
        }
        Else
        {
            Method (_E7E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E7E"
            }
        }

        If (CondRefOf (_E7F))
        {
            Debug = "_E7F Already Exist"
        }
        Else
        {
            Method (_E7F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E7F"
            }
        }

        If (CondRefOf (_E80))
        {
            Debug = "_E80 Already Exist"
        }
        Else
        {
            Method (_E80, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E80"
            }
        }

        If (CondRefOf (_E81))
        {
            Debug = "_E81 Already Exist"
        }
        Else
        {
            Method (_E81, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E81"
            }
        }

        If (CondRefOf (_E82))
        {
            Debug = "_E82 Already Exist"
        }
        Else
        {
            Method (_E82, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E82"
            }
        }

        If (CondRefOf (_E83))
        {
            Debug = "_E83 Already Exist"
        }
        Else
        {
            Method (_E83, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E83"
            }
        }

        If (CondRefOf (_E84))
        {
            Debug = "_E84 Already Exist"
        }
        Else
        {
            Method (_E84, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E84"
            }
        }

        If (CondRefOf (_E85))
        {
            Debug = "_E85 Already Exist"
        }
        Else
        {
            Method (_E85, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E85"
            }
        }

        If (CondRefOf (_E86))
        {
            Debug = "_E86 Already Exist"
        }
        Else
        {
            Method (_E86, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E86"
            }
        }

        If (CondRefOf (_E87))
        {
            Debug = "_E87 Already Exist"
        }
        Else
        {
            Method (_E87, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E87"
            }
        }

        If (CondRefOf (_E88))
        {
            Debug = "_E88 Already Exist"
        }
        Else
        {
            Method (_E88, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E88"
            }
        }

        If (CondRefOf (_E89))
        {
            Debug = "_E89 Already Exist"
        }
        Else
        {
            Method (_E89, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E89"
            }
        }

        If (CondRefOf (_E8A))
        {
            Debug = "_E8A Already Exist"
        }
        Else
        {
            Method (_E8A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E8A"
            }
        }

        If (CondRefOf (_E8B))
        {
            Debug = "_E8B Already Exist"
        }
        Else
        {
            Method (_E8B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E8B"
            }
        }

        If (CondRefOf (_E8C))
        {
            Debug = "_E8C Already Exist"
        }
        Else
        {
            Method (_E8C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E8C"
            }
        }

        If (CondRefOf (_E8D))
        {
            Debug = "_E8D Already Exist"
        }
        Else
        {
            Method (_E8D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E8D"
            }
        }

        If (CondRefOf (_E8E))
        {
            Debug = "_E8E Already Exist"
        }
        Else
        {
            Method (_E8E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E8E"
            }
        }

        If (CondRefOf (_E8F))
        {
            Debug = "_E8F Already Exist"
        }
        Else
        {
            Method (_E8F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E8F"
            }
        }

        If (CondRefOf (_E90))
        {
            Debug = "_E90 Already Exist"
        }
        Else
        {
            Method (_E90, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E90"
            }
        }

        If (CondRefOf (_E91))
        {
            Debug = "_E91 Already Exist"
        }
        Else
        {
            Method (_E91, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E91"
            }
        }

        If (CondRefOf (_E92))
        {
            Debug = "_E92 Already Exist"
        }
        Else
        {
            Method (_E92, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E92"
            }
        }

        If (CondRefOf (_E93))
        {
            Debug = "_E93 Already Exist"
        }
        Else
        {
            Method (_E93, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E93"
            }
        }

        If (CondRefOf (_E94))
        {
            Debug = "_E94 Already Exist"
        }
        Else
        {
            Method (_E94, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E94"
            }
        }

        If (CondRefOf (_E95))
        {
            Debug = "_E95 Already Exist"
        }
        Else
        {
            Method (_E95, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E95"
            }
        }

        If (CondRefOf (_E96))
        {
            Debug = "_E96 Already Exist"
        }
        Else
        {
            Method (_E96, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E96"
            }
        }

        If (CondRefOf (_E97))
        {
            Debug = "_E97 Already Exist"
        }
        Else
        {
            Method (_E97, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E97"
            }
        }

        If (CondRefOf (_E98))
        {
            Debug = "_E98 Already Exist"
        }
        Else
        {
            Method (_E98, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E98"
            }
        }

        If (CondRefOf (_E99))
        {
            Debug = "_E99 Already Exist"
        }
        Else
        {
            Method (_E99, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E99"
            }
        }

        If (CondRefOf (_E9A))
        {
            Debug = "_E9A Already Exist"
        }
        Else
        {
            Method (_E9A, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E9A"
            }
        }

        If (CondRefOf (_E9B))
        {
            Debug = "_E9B Already Exist"
        }
        Else
        {
            Method (_E9B, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E9B"
            }
        }

        If (CondRefOf (_E9C))
        {
            Debug = "_E9C Already Exist"
        }
        Else
        {
            Method (_E9C, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E9C"
            }
        }

        If (CondRefOf (_E9D))
        {
            Debug = "_E9D Already Exist"
        }
        Else
        {
            Method (_E9D, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E9D"
            }
        }

        If (CondRefOf (_E9E))
        {
            Debug = "_E9E Already Exist"
        }
        Else
        {
            Method (_E9E, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E9E"
            }
        }

        If (CondRefOf (_E9F))
        {
            Debug = "_E9F Already Exist"
        }
        Else
        {
            Method (_E9F, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _E9F"
            }
        }

        If (CondRefOf (_EA0))
        {
            Debug = "_EA0 Already Exist"
        }
        Else
        {
            Method (_EA0, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA0"
            }
        }

        If (CondRefOf (_EA1))
        {
            Debug = "_EA1 Already Exist"
        }
        Else
        {
            Method (_EA1, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA1"
            }
        }

        If (CondRefOf (_EA2))
        {
            Debug = "_EA2 Already Exist"
        }
        Else
        {
            Method (_EA2, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA2"
            }
        }

        If (CondRefOf (_EA3))
        {
            Debug = "_EA3 Already Exist"
        }
        Else
        {
            Method (_EA3, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA3"
            }
        }

        If (CondRefOf (_EA4))
        {
            Debug = "_EA4 Already Exist"
        }
        Else
        {
            Method (_EA4, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA4"
            }
        }

        If (CondRefOf (_EA5))
        {
            Debug = "_EA5 Already Exist"
        }
        Else
        {
            Method (_EA5, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA5"
            }
        }

        If (CondRefOf (_EA6))
        {
            Debug = "_EA6 Already Exist"
        }
        Else
        {
            Method (_EA6, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA6"
            }
        }

        If (CondRefOf (_EA7))
        {
            Debug = "_EA7 Already Exist"
        }
        Else
        {
            Method (_EA7, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA7"
            }
        }

        If (CondRefOf (_EA8))
        {
            Debug = "_EA8 Already Exist"
        }
        Else
        {
            Method (_EA8, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA8"
            }
        }

        If (CondRefOf (_EA9))
        {
            Debug = "_EA9 Already Exist"
        }
        Else
        {
            Method (_EA9, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EA9"
            }
        }

        If (CondRefOf (_EAA))
        {
            Debug = "_EAA Already Exist"
        }
        Else
        {
            Method (_EAA, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EAA"
            }
        }

        If (CondRefOf (_EAB))
        {
            Debug = "_EAB Already Exist"
        }
        Else
        {
            Method (_EAB, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EAB"
            }
        }

        If (CondRefOf (_EAC))
        {
            Debug = "_EAC Already Exist"
        }
        Else
        {
            Method (_EAC, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EAC"
            }
        }

        If (CondRefOf (_EAD))
        {
            Debug = "_EAD Already Exist"
        }
        Else
        {
            Method (_EAD, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EAD"
            }
        }

        If (CondRefOf (_EAE))
        {
            Debug = "_EAE Already Exist"
        }
        Else
        {
            Method (_EAE, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EAE"
            }
        }

        If (CondRefOf (_EAF))
        {
            Debug = "_EAF Already Exist"
        }
        Else
        {
            Method (_EAF, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EAF"
            }
        }

        If (CondRefOf (_EB0))
        {
            Debug = "_EB0 Already Exist"
        }
        Else
        {
            Method (_EB0, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB0"
            }
        }

        If (CondRefOf (_EB1))
        {
            Debug = "_EB1 Already Exist"
        }
        Else
        {
            Method (_EB1, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB1"
            }
        }

        If (CondRefOf (_EB2))
        {
            Debug = "_EB2 Already Exist"
        }
        Else
        {
            Method (_EB2, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB2"
            }
        }

        If (CondRefOf (_EB3))
        {
            Debug = "_EB3 Already Exist"
        }
        Else
        {
            Method (_EB3, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB3"
            }
        }

        If (CondRefOf (_EB4))
        {
            Debug = "_EB4 Already Exist"
        }
        Else
        {
            Method (_EB4, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB4"
            }
        }

        If (CondRefOf (_EB5))
        {
            Debug = "_EB5 Already Exist"
        }
        Else
        {
            Method (_EB5, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB5"
            }
        }

        If (CondRefOf (_EB6))
        {
            Debug = "_EB6 Already Exist"
        }
        Else
        {
            Method (_EB6, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB6"
            }
        }

        If (CondRefOf (_EB7))
        {
            Debug = "_EB7 Already Exist"
        }
        Else
        {
            Method (_EB7, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB7"
            }
        }

        If (CondRefOf (_EB8))
        {
            Debug = "_EB8 Already Exist"
        }
        Else
        {
            Method (_EB8, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB8"
            }
        }

        If (CondRefOf (_EB9))
        {
            Debug = "_EB9 Already Exist"
        }
        Else
        {
            Method (_EB9, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EB9"
            }
        }

        If (CondRefOf (_EBA))
        {
            Debug = "_EBA Already Exist"
        }
        Else
        {
            Method (_EBA, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EBA"
            }
        }

        If (CondRefOf (_EBB))
        {
            Debug = "_EBB Already Exist"
        }
        Else
        {
            Method (_EBB, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EBB"
            }
        }

        If (CondRefOf (_EBC))
        {
            Debug = "_EBC Already Exist"
        }
        Else
        {
            Method (_EBC, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EBC"
            }
        }

        If (CondRefOf (_EBD))
        {
            Debug = "_EBD Already Exist"
        }
        Else
        {
            Method (_EBD, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EBD"
            }
        }

        If (CondRefOf (_EBE))
        {
            Debug = "_EBE Already Exist"
        }
        Else
        {
            Method (_EBE, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EBE"
            }
        }

        If (CondRefOf (_EBF))
        {
            Debug = "_EBF Already Exist"
        }
        Else
        {
            Method (_EBF, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EBF"
            }
        }

        If (CondRefOf (_EC0))
        {
            Debug = "_EC0 Already Exist"
        }
        Else
        {
            Method (_EC0, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC0"
            }
        }

        If (CondRefOf (_EC1))
        {
            Debug = "_EC1 Already Exist"
        }
        Else
        {
            Method (_EC1, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC1"
            }
        }

        If (CondRefOf (_EC2))
        {
            Debug = "_EC2 Already Exist"
        }
        Else
        {
            Method (_EC2, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC2"
            }
        }

        If (CondRefOf (_EC3))
        {
            Debug = "_EC3 Already Exist"
        }
        Else
        {
            Method (_EC3, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC3"
            }
        }

        If (CondRefOf (_EC4))
        {
            Debug = "_EC4 Already Exist"
        }
        Else
        {
            Method (_EC4, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC4"
            }
        }

        If (CondRefOf (_EC5))
        {
            Debug = "_EC5 Already Exist"
        }
        Else
        {
            Method (_EC5, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC5"
            }
        }

        If (CondRefOf (_EC6))
        {
            Debug = "_EC6 Already Exist"
        }
        Else
        {
            Method (_EC6, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC6"
            }
        }

        If (CondRefOf (_EC7))
        {
            Debug = "_EC7 Already Exist"
        }
        Else
        {
            Method (_EC7, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC7"
            }
        }

        If (CondRefOf (_EC8))
        {
            Debug = "_EC8 Already Exist"
        }
        Else
        {
            Method (_EC8, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC8"
            }
        }

        If (CondRefOf (_EC9))
        {
            Debug = "_EC9 Already Exist"
        }
        Else
        {
            Method (_EC9, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EC9"
            }
        }

        If (CondRefOf (_ECA))
        {
            Debug = "_ECA Already Exist"
        }
        Else
        {
            Method (_ECA, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ECA"
            }
        }

        If (CondRefOf (_ECB))
        {
            Debug = "_ECB Already Exist"
        }
        Else
        {
            Method (_ECB, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ECB"
            }
        }

        If (CondRefOf (_ECC))
        {
            Debug = "_ECC Already Exist"
        }
        Else
        {
            Method (_ECC, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ECC"
            }
        }

        If (CondRefOf (_ECD))
        {
            Debug = "_ECD Already Exist"
        }
        Else
        {
            Method (_ECD, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ECD"
            }
        }

        If (CondRefOf (_ECE))
        {
            Debug = "_ECE Already Exist"
        }
        Else
        {
            Method (_ECE, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ECE"
            }
        }

        If (CondRefOf (_ECF))
        {
            Debug = "_ECF Already Exist"
        }
        Else
        {
            Method (_ECF, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ECF"
            }
        }

        If (CondRefOf (_ED0))
        {
            Debug = "_ED0 Already Exist"
        }
        Else
        {
            Method (_ED0, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED0"
            }
        }

        If (CondRefOf (_ED1))
        {
            Debug = "_ED1 Already Exist"
        }
        Else
        {
            Method (_ED1, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED1"
            }
        }

        If (CondRefOf (_ED2))
        {
            Debug = "_ED2 Already Exist"
        }
        Else
        {
            Method (_ED2, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED2"
            }
        }

        If (CondRefOf (_ED3))
        {
            Debug = "_ED3 Already Exist"
        }
        Else
        {
            Method (_ED3, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED3"
            }
        }

        If (CondRefOf (_ED4))
        {
            Debug = "_ED4 Already Exist"
        }
        Else
        {
            Method (_ED4, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED4"
            }
        }

        If (CondRefOf (_ED5))
        {
            Debug = "_ED5 Already Exist"
        }
        Else
        {
            Method (_ED5, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED5"
            }
        }

        If (CondRefOf (_ED6))
        {
            Debug = "_ED6 Already Exist"
        }
        Else
        {
            Method (_ED6, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED6"
            }
        }

        If (CondRefOf (_ED7))
        {
            Debug = "_ED7 Already Exist"
        }
        Else
        {
            Method (_ED7, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED7"
            }
        }

        If (CondRefOf (_ED8))
        {
            Debug = "_ED8 Already Exist"
        }
        Else
        {
            Method (_ED8, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED8"
            }
        }

        If (CondRefOf (_ED9))
        {
            Debug = "_ED9 Already Exist"
        }
        Else
        {
            Method (_ED9, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _ED9"
            }
        }

        If (CondRefOf (_EDA))
        {
            Debug = "_EDA Already Exist"
        }
        Else
        {
            Method (_EDA, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EDA"
            }
        }

        If (CondRefOf (_EDB))
        {
            Debug = "_EDB Already Exist"
        }
        Else
        {
            Method (_EDB, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EDB"
            }
        }

        If (CondRefOf (_EDC))
        {
            Debug = "_EDC Already Exist"
        }
        Else
        {
            Method (_EDC, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EDC"
            }
        }

        If (CondRefOf (_EDD))
        {
            Debug = "_EDD Already Exist"
        }
        Else
        {
            Method (_EDD, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EDD"
            }
        }

        If (CondRefOf (_EDE))
        {
            Debug = "_EDE Already Exist"
        }
        Else
        {
            Method (_EDE, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EDE"
            }
        }

        If (CondRefOf (_EDF))
        {
            Debug = "_EDF Already Exist"
        }
        Else
        {
            Method (_EDF, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EDF"
            }
        }

        If (CondRefOf (_EE0))
        {
            Debug = "_EE0 Already Exist"
        }
        Else
        {
            Method (_EE0, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE0"
            }
        }

        If (CondRefOf (_EE1))
        {
            Debug = "_EE1 Already Exist"
        }
        Else
        {
            Method (_EE1, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE1"
            }
        }

        If (CondRefOf (_EE2))
        {
            Debug = "_EE2 Already Exist"
        }
        Else
        {
            Method (_EE2, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE2"
            }
        }

        If (CondRefOf (_EE3))
        {
            Debug = "_EE3 Already Exist"
        }
        Else
        {
            Method (_EE3, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE3"
            }
        }

        If (CondRefOf (_EE4))
        {
            Debug = "_EE4 Already Exist"
        }
        Else
        {
            Method (_EE4, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE4"
            }
        }

        If (CondRefOf (_EE5))
        {
            Debug = "_EE5 Already Exist"
        }
        Else
        {
            Method (_EE5, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE5"
            }
        }

        If (CondRefOf (_EE6))
        {
            Debug = "_EE6 Already Exist"
        }
        Else
        {
            Method (_EE6, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE6"
            }
        }

        If (CondRefOf (_EE7))
        {
            Debug = "_EE7 Already Exist"
        }
        Else
        {
            Method (_EE7, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE7"
            }
        }

        If (CondRefOf (_EE8))
        {
            Debug = "_EE8 Already Exist"
        }
        Else
        {
            Method (_EE8, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE8"
            }
        }

        If (CondRefOf (_EE9))
        {
            Debug = "_EE9 Already Exist"
        }
        Else
        {
            Method (_EE9, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EE9"
            }
        }

        If (CondRefOf (_EEA))
        {
            Debug = "_EEA Already Exist"
        }
        Else
        {
            Method (_EEA, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EEA"
            }
        }

        If (CondRefOf (_EEB))
        {
            Debug = "_EEB Already Exist"
        }
        Else
        {
            Method (_EEB, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EEB"
            }
        }

        If (CondRefOf (_EEC))
        {
            Debug = "_EEC Already Exist"
        }
        Else
        {
            Method (_EEC, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EEC"
            }
        }

        If (CondRefOf (_EED))
        {
            Debug = "_EED Already Exist"
        }
        Else
        {
            Method (_EED, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EED"
            }
        }

        If (CondRefOf (_EEE))
        {
            Debug = "_EEE Already Exist"
        }
        Else
        {
            Method (_EEE, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EEE"
            }
        }

        If (CondRefOf (_EEF))
        {
            Debug = "_EEF Already Exist"
        }
        Else
        {
            Method (_EEF, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EEF"
            }
        }

        If (CondRefOf (_EF0))
        {
            Debug = "_EF0 Already Exist"
        }
        Else
        {
            Method (_EF0, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF0"
            }
        }

        If (CondRefOf (_EF1))
        {
            Debug = "_EF1 Already Exist"
        }
        Else
        {
            Method (_EF1, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF1"
            }
        }

        If (CondRefOf (_EF2))
        {
            Debug = "_EF2 Already Exist"
        }
        Else
        {
            Method (_EF2, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF2"
            }
        }

        If (CondRefOf (_EF3))
        {
            Debug = "_EF3 Already Exist"
        }
        Else
        {
            Method (_EF3, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF3"
            }
        }

        If (CondRefOf (_EF4))
        {
            Debug = "_EF4 Already Exist"
        }
        Else
        {
            Method (_EF4, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF4"
            }
        }

        If (CondRefOf (_EF5))
        {
            Debug = "_EF5 Already Exist"
        }
        Else
        {
            Method (_EF5, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF5"
            }
        }

        If (CondRefOf (_EF6))
        {
            Debug = "_EF6 Already Exist"
        }
        Else
        {
            Method (_EF6, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF6"
            }
        }

        If (CondRefOf (_EF7))
        {
            Debug = "_EF7 Already Exist"
        }
        Else
        {
            Method (_EF7, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF7"
            }
        }

        If (CondRefOf (_EF8))
        {
            Debug = "_EF8 Already Exist"
        }
        Else
        {
            Method (_EF8, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF8"
            }
        }

        If (CondRefOf (_EF9))
        {
            Debug = "_EF9 Already Exist"
        }
        Else
        {
            Method (_EF9, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EF9"
            }
        }

        If (CondRefOf (_EFA))
        {
            Debug = "_EFA Already Exist"
        }
        Else
        {
            Method (_EFA, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EFA"
            }
        }

        If (CondRefOf (_EFB))
        {
            Debug = "_EFB Already Exist"
        }
        Else
        {
            Method (_EFB, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EFB"
            }
        }

        If (CondRefOf (_EFC))
        {
            Debug = "_EFC Already Exist"
        }
        Else
        {
            Method (_EFC, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EFC"
            }
        }

        If (CondRefOf (_EFD))
        {
            Debug = "_EFD Already Exist"
        }
        Else
        {
            Method (_EFD, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EFD"
            }
        }

        If (CondRefOf (_EFE))
        {
            Debug = "_EFE Already Exist"
        }
        Else
        {
            Method (_EFE, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EFE"
            }
        }

        If (CondRefOf (_EFF))
        {
            Debug = "_EFF Already Exist"
        }
        Else
        {
            Method (_EFF, 0, NotSerialized)  // _Exx: Edge-Triggered GPE, xx=0x00-0xFF
            {
                Debug = "GPE DETECTED = _EFF"
            }
        }
    }
}

