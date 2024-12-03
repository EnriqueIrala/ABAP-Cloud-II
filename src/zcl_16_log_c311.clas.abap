CLASS zcl_16_log_c311 DEFINITION INHERITING FROM zcl_15_log_c311
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      production_line REDEFINITION,
      input_products REDEFINITION.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_16_LOG_C311 IMPLEMENTATION.


  METHOD input_products.
    rv_input = 'Input Products'.
  ENDMETHOD.


  METHOD production_line.
    rv_production = 'Production line'.
  ENDMETHOD.
ENDCLASS.
