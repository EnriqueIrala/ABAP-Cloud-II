CLASS zcl_38_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS: set_state IMPORTING iv_state type string,
            get_state RETURNING VALUE(rv_state) type string.

   EVENTS modified_state EXPORTING VALUE(ev_new_state) type string.


  PROTECTED SECTION.
  PRIVATE SECTION.

    data: current_state type string.

ENDCLASS.



CLASS ZCL_38_LOG_C311 IMPLEMENTATION.


  METHOD get_state.

    rv_state = me->current_state.

  ENDMETHOD.


  METHOD set_state.

    me->current_state = iv_state.
    RAISE EVENT modified_state EXPORTING ev_new_state = me->current_state.

  ENDMETHOD.
ENDCLASS.
