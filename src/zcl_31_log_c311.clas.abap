CLASS zcl_31_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: hour        TYPE zsyst_uzeit,
          sender_user TYPE string.

    METHODS:
      on_time_out FOR EVENT time_out OF zcl_30_log_c311
        IMPORTING ev_hour
                  sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_31_LOG_C311 IMPLEMENTATION.


  METHOD on_time_out.

    me->hour = ev_hour.
    me->sender_user = sender->user.

  ENDMETHOD.
ENDCLASS.
