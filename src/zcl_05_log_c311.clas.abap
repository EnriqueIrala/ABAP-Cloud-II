CLASS zcl_05_log_c311 DEFINITION
  PUBLIC
* FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     DATA: animal_type TYPE string.

    METHODS:

 constructor,

      set_animal IMPORTING im_type TYPE string,
      get_animal RETURNING VALUE(rv_type) TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.



ENDCLASS.



CLASS ZCL_05_LOG_C311 IMPLEMENTATION.


  METHOD constructor.

  ENDMETHOD.


  METHOD get_animal.

    rv_type = animal_type.

  ENDMETHOD.


  METHOD set_animal.

    animal_type = im_type.

  ENDMETHOD.
ENDCLASS.
