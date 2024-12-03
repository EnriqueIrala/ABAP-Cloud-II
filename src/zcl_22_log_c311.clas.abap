CLASS zcl_22_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
     assign_company IMPORTING io_company type REF TO zif_04_log_c311
                    RETURNING VALUE(rv_plant) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_22_LOG_C311 IMPLEMENTATION.


  METHOD assign_company.
    rv_plant = |Plant was assigned to....{ io_company->define_company( ) }|.
  ENDMETHOD.
ENDCLASS.
