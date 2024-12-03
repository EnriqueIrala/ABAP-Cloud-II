CLASS zcl_10_log_c311 DEFINITION INHERITING FROM zcl_09_log_c311
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      assign_class
        RETURNING VALUE(rv_class) TYPE REF TO zcl_09_log_c311.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_10_LOG_C311 IMPLEMENTATION.


  METHOD assign_class.

    rv_class = NEW zcl_09_log_c311( ).

  ENDMETHOD.
ENDCLASS.