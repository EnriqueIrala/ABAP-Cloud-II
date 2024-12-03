CLASS zcl_36_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_user IMPORTING iv_user TYPE syuname
                       RAISING   zcx_35_log_c311.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_36_LOG_C311 IMPLEMENTATION.


  METHOD check_user.

    IF sy-uname = 'CB9980000219'.

      RAISE EXCEPTION TYPE zcx_35_log_c311
        EXPORTING
          textid   = zcx_35_log_c311=>no_auth
*         previous =
          mv_msgv1 = |{ sy-uname }|
          mv_msgv2 = 'Edit Invoice'
*         mv_msgv3 =
*         mv_msgv4 =
        .

    ENDIF.

  ENDMETHOD.
ENDCLASS.
