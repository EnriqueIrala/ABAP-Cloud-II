CLASS zcl_12_log_c311 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      get_capital RETURNING VALUE(rv_capital) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_12_LOG_C311 IMPLEMENTATION.


  METHOD get_capital.

    DATA(lo_friend) = NEW zcl_11_log_c311( ).
    lo_friend->capital = 'Capital1'.

    rv_capital = lo_friend->capital.

  ENDMETHOD.
ENDCLASS.
