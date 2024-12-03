CLASS zcl_41_log_c311 DEFINITION INHERITING FROM zcl_39_log_c311
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA state TYPE string.
    METHODS: on_modified_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_41_LOG_C311 IMPLEMENTATION.


  METHOD on_modified_state.

    me->state = ev_new_state.

  ENDMETHOD.
ENDCLASS.
