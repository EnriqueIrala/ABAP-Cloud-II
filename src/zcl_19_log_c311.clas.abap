CLASS zcl_19_log_c311 DEFINITION
  PUBLIC
  INHERITING FROM zcl_17_log_c311
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
     airplane_type REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_19_LOG_C311 IMPLEMENTATION.


  METHOD airplane_type.
     rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.
ENDCLASS.