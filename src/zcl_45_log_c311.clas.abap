CLASS zcl_45_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_factorial IMPORTING iv_number    TYPE i
                          EXPORTING ev_factorial TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_45_LOG_C311 IMPLEMENTATION.


  METHOD get_factorial.

    check iv_number gt 0.

    data(lv_number) = iv_number.

    ev_factorial = 1.

    while lv_number ne 0.

     ev_factorial = ev_factorial * lv_number.
     lv_number -= 1.

    ENDWHILE.

  ENDMETHOD.
ENDCLASS.
