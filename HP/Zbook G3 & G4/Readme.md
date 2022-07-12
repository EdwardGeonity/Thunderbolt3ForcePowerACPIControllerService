That is Debug build version of ACPI driver to control its state and to make it full-time avaliable to system.




1. DSDT PATCHES REQUIARED:

     RENAME "DSDT PATCH Zbook G3+G4 END OF TINI FOR TBINI"
         FIND = 700D456E642D6F662D54
         REPLACE = 5442494E700D456E6454
      
     RENAME "DSDT PATCH _WAK to ZWAK"
         FIND = 5F57414B
         REPLACE = 5A57414B
         
     RENAME "DSDT PATCH Elite X2 END OF TINI FOR TBINI"
         FIND = 5442494E414442470D456E6454494E49
         REPLACE = 414442470D456E642D6F662D54494E49
               
2. Place SSDT into ACPI folder
3. If Hackintosh - Use TB3HP SSDT or TBTONPCH SSDT



//////////////////////////////////////////////

If you do want to treat me a cup of Capuchino:
Paypal: edwardgeonity@gmail.com
