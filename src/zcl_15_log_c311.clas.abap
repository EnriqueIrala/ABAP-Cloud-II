CLASS zcl_15_log_c311 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:

      merchandise_output
        RETURNING VALUE(rv_merchandise) TYPE string,

      production_line ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      input_products ABSTRACT
        RETURNING VALUE(rv_input) TYPE string.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_15_LOG_C311 IMPLEMENTATION.


  METHOD merchandise_output.

    rv_merchandise = 'Marchandise_out'.

  ENDMETHOD.
ENDCLASS.
