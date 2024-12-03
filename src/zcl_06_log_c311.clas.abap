CLASS zcl_06_log_c311 DEFINITION INHERITING FROM zcl_05_log_c311
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: my_attr TYPE string.

    METHODS:
      constructor,
      set_animal REDEFINITION,
      view_attribute IMPORTING attr TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.



ENDCLASS.



CLASS ZCL_06_LOG_C311 IMPLEMENTATION.


  METHOD constructor.

   super->constructor( ).

    my_attr = 'Value'.


  ENDMETHOD.


  METHOD set_animal.



    animal_type = 'Child Logic'.

    super->set_animal( '' ).

  ENDMETHOD.


  METHOD view_attribute.


  ENDMETHOD.
ENDCLASS.
