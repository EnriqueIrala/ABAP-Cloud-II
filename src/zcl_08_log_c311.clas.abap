CLASS zcl_08_log_c311 DEFINITION INHERITING FROM zcl_07_log_c311
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      walk REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_08_LOG_C311 IMPLEMENTATION.


  METHOD walk.

    rv_walk = 'The lion walks'.

  ENDMETHOD.
ENDCLASS.