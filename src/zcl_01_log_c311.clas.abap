CLASS zcl_01_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

* Attributes
*    DATA: product TYPE string.
*
*    CLASS-DATA: date TYPE string.

* Methods
    METHODS:
      set_product IMPORTING product TYPE string,
      get_product RETURNING VALUE(rv_product) TYPE string.

    CLASS-METHODS:
      set_date IMPORTING im_date TYPE string,
      get_date EXPORTING ex_date TYPE string.



  PROTECTED SECTION.
  PRIVATE SECTION.

* Attributes
    DATA: product TYPE string.

    CLASS-DATA: date TYPE string.

ENDCLASS.



CLASS ZCL_01_LOG_C311 IMPLEMENTATION.


  METHOD get_date.

    ex_date = date.

  ENDMETHOD.


  METHOD get_product.

    rv_product = me->product.

  ENDMETHOD.


  METHOD set_date.

    date = im_date.

  ENDMETHOD.


  METHOD set_product.

    me->product = product.

  ENDMETHOD.
ENDCLASS.
