CLASS zcl_39_log_c311 DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      on_modified_state ABSTRACT
        FOR EVENT modified_state OF zcl_38_log_c311
        IMPORTING ev_new_state.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_39_LOG_C311 IMPLEMENTATION.
ENDCLASS.
