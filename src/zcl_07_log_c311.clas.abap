CLASS zcl_07_log_c311 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      walk FINAL RETURNING VALUE(rv_walk) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_07_LOG_C311 IMPLEMENTATION.


  METHOD walk.

    rv_walk = 'The animal walks'.

  ENDMETHOD.
ENDCLASS.
