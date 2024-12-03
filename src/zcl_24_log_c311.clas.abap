CLASS zcl_24_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     METHODS:
       set_credit_card IMPORTING io_credit_card type REF TO zcl_23_log_c311,
       get_credit_card RETURNING VALUE(ro_credit_card) type REF TO zcl_23_log_c311.

  PROTECTED SECTION.
  PRIVATE SECTION.

    data: credit_card type REF TO zcl_23_log_c311.

ENDCLASS.



CLASS ZCL_24_LOG_C311 IMPLEMENTATION.


  METHOD get_credit_card.
   ro_credit_card = me->credit_card.
  ENDMETHOD.


  METHOD set_credit_card.
    me->credit_card = io_credit_card.
  ENDMETHOD.
ENDCLASS.
