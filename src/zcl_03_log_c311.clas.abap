CLASS zcl_03_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: brand TYPE string VALUE 'LOGALI' READ-ONLY.

    METHODS:
      set_data IMPORTING
                 im_name TYPE string
                 im_age  TYPE string OPTIONAL,

      get_data EXPORTING
                 ex_name TYPE string
                 ex_age  TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: name TYPE string,
          age  TYPE string.

ENDCLASS.



CLASS ZCL_03_LOG_C311 IMPLEMENTATION.


  METHOD get_data.

    ex_name = me->name.
    ex_age = me->age.

  ENDMETHOD.


  METHOD set_data.

    me->name = im_name.

    IF im_age IS SUPPLIED.
      me->age = im_age.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
