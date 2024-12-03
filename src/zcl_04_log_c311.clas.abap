CLASS zcl_04_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS:
      constructor.

    CLASS-METHODS:
      class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_04_LOG_C311 IMPLEMENTATION.


  METHOD class_constructor.

    log = | { log } Static Constructor-->  |.

  ENDMETHOD.


  METHOD constructor.

    log = | { log } Instance Constructor--> |.

  ENDMETHOD.
ENDCLASS.
