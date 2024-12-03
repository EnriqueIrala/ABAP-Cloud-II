CLASS zcl_14_log_c311 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      zif_01_log_c311,
      zif_02_log_c311.

      ALIASES:

      set_conn_id for zif_01_log_c311~set_conn_id,
      get_conn_id for zif_01_log_c311~get_conn_id,
      get_airport for zif_03_log_c311~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_14_LOG_C311 IMPLEMENTATION.


  METHOD get_conn_id.

    rv_conn_id = me->zif_01_log_c311~conn_id.

  ENDMETHOD.


  METHOD set_conn_id.

    me->zif_01_log_c311~conn_id = iv_conn_id.

  ENDMETHOD.


  METHOD zif_02_log_c311~get_customer.

    SELECT SINGLE FROM /dmo/customer
    FIELDS FIRST_name,
           last_name
      WHERE customer_id = @iv_cust_id
      INTO @rs_cust_address.

  ENDMETHOD.


  METHOD get_airport.

    SELECT SINGLE FROM /dmo/airport
    FIELDS *
    WHERE airport_id = @iv_airport_id
    INTO @rs_airport.

  ENDMETHOD.
ENDCLASS.
