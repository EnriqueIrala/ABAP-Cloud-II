*"* use this source file for your ABAP unit test classes
CLASS ltcl_business_process DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      factorial_local_test FOR TESTING RAISING cx_static_check.

    METHODS:
      setup,
      teardown.

    DATA mo_cut TYPE REF TO zcl_45_log_c311. " Cut Class Under test
ENDCLASS.


CLASS ltcl_business_process IMPLEMENTATION.

  METHOD factorial_local_test.

    "Given
    DATA(lv_number) = 4.
    DATA lv_factorial_ut TYPE i.

    "When
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = 2
      IMPORTING
        ev_factorial = lv_factorial_ut ).

    "Then
    IF cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ) EQ abap_true.

      cl_abap_unit_assert=>fail( 'Factorial Test Failed' ).

    ENDIF.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

ENDCLASS.
