CLASS zcl_02_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: c_logali TYPE c LENGTH 6 VALUE 'LOGALI',
               BEGIN OF cs_values,
                 c_v1 TYPE c LENGTH 2 VALUE 'V1',
                 c_v2 TYPE c LENGTH 2 VALUE 'V2',
                 c_v3 TYPE c LENGTH 2 VALUE 'V3',
               END OF cs_values.

    TYPES: BEGIN OF ty_travel,
             travel_id     TYPE /dmo/travel_id,
             agency_id     TYPE /dmo/agency_id,
             customer_id   TYPE /dmo/customer_id,
             total_price   TYPE /dmo/total_price,
             currency_code TYPE /dmo/currency_code,
           END OF ty_travel,

           tt_travel TYPE TABLE OF ty_travel.

    METHODS:
      get_travel
        IMPORTING im_travel_id TYPE /dmo/travel_id OPTIONAL
        EXPORTING et_travel    TYPE tt_travel.




  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_02_LOG_C311 IMPLEMENTATION.


  METHOD get_travel.

*    select SINGLE travel_id,
*                  agency_id,
*                  customer_id,
*                  total_price,
*                  currency_code
*             from /dmo/travel
*            WHERE travel_id = @im_travel_id
*            into @rs_travel.

    SELECT travel_id,
           agency_id,
           customer_id,
           total_price,
           currency_code
      FROM /dmo/travel
      INTO TABLE @DATA(lt_travel) UP TO 10 ROWS.

    et_travel = lt_travel.

  ENDMETHOD.
ENDCLASS.
