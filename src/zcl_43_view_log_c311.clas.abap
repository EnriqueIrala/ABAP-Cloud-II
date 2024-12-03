CLASS zcl_43_view_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     METHODS:
       display_employee IMPORTING iv_name type string
                                  iv_role type string
                                  io_out type REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_43_VIEW_LOG_C311 IMPLEMENTATION.


  METHOD display_employee.
     io_out->write( |{ iv_name }---{ iv_role }| ).
  ENDMETHOD.
ENDCLASS.
