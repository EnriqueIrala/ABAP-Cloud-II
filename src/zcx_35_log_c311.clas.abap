CLASS zcx_35_log_c311 DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF no_auth,
        msgid TYPE symsgid VALUE 'ZMC_LOG_C311',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'MV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'MV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'MV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'MV_MSGV4',
      END OF no_auth.

    DATA: mv_msgv1 TYPE string,
          mv_msgv2 TYPE string,
          mv_msgv3 TYPE string,
          mv_msgv4 TYPE string.

    METHODS constructor
      IMPORTING
        textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        mv_msgv1  TYPE string OPTIONAL
        mv_msgv2  TYPE string OPTIONAL
        mv_msgv3  TYPE string OPTIONAL
        mv_msgv4  TYPE string OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCX_35_LOG_C311 IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->mv_msgv1 = mv_msgv1.
    me->mv_msgv2 = mv_msgv2.
    me->mv_msgv3 = mv_msgv3.
    me->mv_msgv4 = mv_msgv4.

  ENDMETHOD.
ENDCLASS.
