CLASS zcl_28_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_29_log_c311.

  PUBLIC SECTION.

    METHODS:
      get_first.

  PROTECTED SECTION.
  PRIVATE SECTION.

    data: gs_first type ty_first,
          lo_helper_attr type REF TO lcl_helper.


ENDCLASS.



CLASS ZCL_28_LOG_C311 IMPLEMENTATION.


  METHOD get_first.

   data(lo_helper) = new lcl_helper( ).

   data: lo_helper2 type REF TO lcl_helper2.

  ENDMETHOD.
ENDCLASS.
