CLASS zcl_21_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   INTERFACES:
     zif_04_log_c311.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_21_LOG_C311 IMPLEMENTATION.


  METHOD zif_04_log_c311~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.
ENDCLASS.