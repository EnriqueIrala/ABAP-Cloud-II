CLASS zcl_13_log_c311 DEFINITION INHERITING FROM zcl_12_log_c311
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:

      get_cap_child RETURNING VALUE(rv_capital) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_13_LOG_C311 IMPLEMENTATION.


  METHOD get_cap_child.

    DATA(lo_friend) = NEW zcl_11_log_c311( ).

    lo_friend->capital = 'Capital2'.

    rv_capital = lo_friend->capital.

  ENDMETHOD.
ENDCLASS.
