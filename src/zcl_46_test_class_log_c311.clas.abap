CLASS zcl_46_test_class_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS
  .

  PUBLIC SECTION.

    METHODS:
      "! @testing zcl_45_log_c311
      factorial_test FOR TESTING. "UTM Unit test method

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS:
      setup,
      teardown.

    DATA mo_cut TYPE REF TO zcl_45_log_c311. " Cut Class Under test

ENDCLASS.



CLASS ZCL_46_TEST_CLASS_LOG_C311 IMPLEMENTATION.


  METHOD factorial_test.

    "Given
      data(lv_number) = 4.
      data lv_factorial_ut type i.

    "When
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_number
      IMPORTING
        ev_factorial = lv_factorial_ut ).

   "Then
   cl_abap_unit_assert=>assert_equals(
     EXPORTING
       act                  = lv_factorial_ut
       exp                  = 24 ).

  ENDMETHOD.


  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.


  METHOD teardown.
    clear mo_cut.
  ENDMETHOD.
ENDCLASS.
