CLASS zcl_ejec_log DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EJEC_LOG IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

******    out->write( 'Hello World' ).
*****
******    DATA: lo_obj1 TYPE REF TO zcl_01_log_c311.
******
******    CREATE OBJECT lo_obj1.
******
*****    DATA(lo_obj1) = NEW zcl_01_log_c311( ).
*****
*****    lo_obj1->set_product( 'Product 1' ).
*****
******    lo_obj1->get_product(
******      IMPORTING
******        product = DATA(lv_product) ).
*****
*****    out->write( lo_obj1->get_product( ) ).
*****
*****    zcl_01_log_c311=>set_date( '2024-05-10' ).
*****
*****    zcl_01_log_c311=>get_date(
*****      IMPORTING
*****        ex_date = DATA(lv_date) ).
*****
*****    out->write( lv_date ).
****
*****    DATA(lo_travel) = NEW zcl_02_log_c311( ).
*****
******    lo_travel->get_travel(
*******      EXPORTING
*******        im_travel_id =
******      IMPORTING
******        et_travel    = DATA(lt_travel) ).
*****
*****    DATA(lv_string) = | Hola que tal { zcl_02_log_c311=>c_logali } | .
*****
*****    DATA(lv_value) = zcl_02_log_c311=>cs_values-c_v2.
*****
*****    out->write( lv_string ).
*****    out->write( lv_value ).
*****
*****    DATA(lo_data) = NEW zcl_03_log_c311( ).
*****
*****    lo_data->set_data(
*****      im_name = 'Enrique'
*****      im_age  = '36'
*****    ).
*****
*****    lo_data->get_data(
*****      IMPORTING
*****        ex_name = DATA(lv_name)
*****        ex_age  = DATA(lv_age)
*****    ).
*****
*****    out->write( lv_name && lv_age ).
*****
*****    out->write( lo_data->brand ).
****
*****    DATA(lo_constructor) = NEW zcl_04_log_c311( ).
*****    out->write( zcl_04_log_c311=>log ).
*****    DATA(lo_constructor2) = NEW zcl_04_log_c311( ).
*****    out->write( zcl_04_log_c311=>log ).
*****    DATA(lo_constructor3) = NEW zcl_04_log_c311( ).
*****    out->write( zcl_04_log_c311=>log ).
****
****    DATA(lo_child) = NEW zcl_06_log_c311( ).
****
****    lo_child->set_animal( im_type = 'Fhater animal' ).
****
*****    out->write( lo_child->animal_type  ).
*****    out->write( lo_child->my_attr  ).
****
****    out->write( lo_child->get_animal( ) ).
**
*** Narrowing cast
**
**    DATA(lo_animal) = NEW zcl_07_log_c311( ).
**    DATA(lo_lion) = NEW zcl_08_log_c311( ).
**
**    lo_animal = lo_lion.
**
***    out->write( lo_animal->walk( ) ).
**
**
*** Widening cast
**
**    DATA(lo_lion2) =  NEW zcl_08_log_c311( ).
**
**    TRY.
**
**        lo_lion2 ?= lo_animal.
**
**      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
**
**        out->write( lx_cast->get_text( ) ).
**
**    ENDTRY.
**
**    out->write( lo_animal->walk( ) ).
**    out->write( lo_lion2->walk( ) ).
**
**    CLEAR: lo_animal.
**
**    IF lo_animal IS BOUND.
**
**      out->write( lo_animal->walk( ) ).
**
**    ELSE.
**
**      lo_animal = NEW #( ).
**      out->write( lo_animal->walk( ) ).
**
**    ENDIF.
*
** Encapsulate
*
*    DATA(lo_class_h) = NEW zcl_10_log_c311( ).
*
*    DATA(lo_class_p) = lo_class_h->assign_class( ).
*
*    out->write( lo_class_p->get_attr( ) ).
*
** Friend
*    DATA(lo_friend) = NEW zcl_12_log_c311( ).
*
*    out->write( lo_friend->get_capital( ) ).
*
** Friend child
*    DATA(lo_friend2) = NEW zcl_13_log_c311( ).
*
*    out->write( lo_friend2->get_cap_child( ) ).
*
*
*     DATA(lo_main) = NEW zcl_11_log_c311( ).
*
*
* Interfaces
*    DATA(lo_interface) = NEW zcl_14_log_c311( ).
*
*    lo_interface->set_conn_id( 'España - Colombia' ).
*
*    out->write( lo_interface->get_conn_id( ) ).
*
*    out->write( lo_interface->zif_02_log_c311~get_customer( '000002' ) ).
*
*    out->write( lo_interface->get_airport( 'MAD' ) ).
*
** Abstract class
*    DATA(lo_abstract) = NEW zcl_16_log_c311( ).
*
*    out->write( lo_abstract->merchandise_output( ) ).
*    out->write( lo_abstract->input_products( ) ).
*    out->write( lo_abstract->production_line( ) ).
*
** Polymorphism Classes
*
*    DATA: lt_airplanes TYPE STANDARD TABLE OF REF TO zcl_17_log_c311,
*          lo_airplane  TYPE REF TO zcl_17_log_c311.
**          lo_cargo     TYPE REF TO zcl_18_log_c311,
**          lo_passenger TYPE REF TO zcl_19_log_c311.
*
*    DATA(lo_cargo) = NEW zcl_18_log_c311( ).
*    APPEND lo_cargo TO lt_airplanes.
*
*    DATA(lo_passenger) = NEW zcl_19_log_c311( ).
*    APPEND lo_passenger TO lt_airplanes.
*
*    LOOP AT lt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.
*
** Polymorphism Interface
*    DATA: lt_companies TYPE STANDARD TABLE OF REF TO zif_04_log_c311,
*          lo_company   TYPE REF TO zif_04_log_c311,
*          lo_europe    TYPE REF TO zcl_20_log_c311,
*          lo_usa       TYPE REF TO zcl_21_log_c311,
*          lo_plant      TYPE REF TO zcl_22_log_c311.
*
*          lo_europe = new #( ).
*          APPEND lo_europe to lt_companies.
*
*          lo_usa = new #( ).
*          APPEND lo_usa to lt_companies.
*
*          lo_plant = new #( ).
*
*          LOOP AT lt_companies into lo_company.
*            out->write( lo_company->define_company( ) ).
*            out->write( lo_plant->assign_company( lo_company ) ).
*          ENDLOOP.
*
** Association
*   data(lo_credit_card) = new zcl_23_log_c311( ).
*   data(lo_client) = new zcl_24_log_c311( ).
*
*   lo_credit_card->set_card_num( '4444 5555 6666 7777' ).
*
*   lo_client->set_credit_card( lo_credit_card ).
*
*   out->write( lo_client->get_credit_card( )->get_card_num( ) ).
*
** Composition
*
*   data(lo_keyboard) = new zcl_25_log_c311( ).
*   data(lo_laptop) = new zcl_26_log_c311( lo_keyboard ).
*
*   lo_keyboard->keyboard_type = 'ES'.
*
*   out->write( lo_laptop->keyboard->keyboard_type ).
*
** Generic class OBJECT
*    DATA lo_object TYPE REF TO object.
*
*    lo_object = NEW zcl_27_log_c311( ).
*
*    DATA(lv_method) = 'RETURN_CATEGORY'.
*
*    DATA lv_category TYPE string.
*
*    CALL METHOD lo_object->(lv_method) RECEIVING rv_category = lv_category.
*
*    out->write( lv_category ).
*
** Events
*    DATA(lo_timer) = NEW zcl_30_log_c311( ).
*    DATA(lo_conexion) = NEW zcl_31_log_c311( ).
*
*    SET HANDLER lo_conexion->on_time_out FOR lo_timer.
*
*    DO.
*      WAIT UP TO 1 SECONDS.
*      lo_timer->increment_counter( 1 ).
*
*      IF lo_conexion->hour IS INITIAL.
*        out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time( ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { lo_conexion->hour } { lo_conexion->sender_user }| ).
*        exit.
*      ENDIF.
*
*    ENDDO.
*
*** Event from Interface
**    DATA(lo_bank) = NEW zcl_32_log_c311( ).
**    DATA(lo_client) = NEW zcl_33_log_c311( ).
**
**    SET HANDLER lo_client->on_new_transfer FOR lo_bank ACTIVATION abap_true.
**
**    DO 5 TIMES.
**
**      WAIT UP TO 1 SECONDS.
**      out->write( lo_bank->create_notification( ) ).
**      out->write( lo_client->notification ).
**
**      IF sy-index = 3.
**
**        SET HANDLER lo_client->on_new_transfer FOR lo_bank ACTIVATION abap_false.
**        lo_client->notification = 'No hanlder for event new transfer'.
**
**      ENDIF.
**
**    ENDDO.
*
*** Exemption
**    DATA(lo_exemp) = NEW zcl_36_log_c311( ).
**
**    DATA: lv_result TYPE i,
**          lv_num1   TYPE i VALUE 20,
**          lv_num2   TYPE i.
**
***  data: lx_auth type ref to zcx_35_log_c311.
**
**    TRY.
***        lo_exemp->check_user( sy-uname ).
**
**        lv_result = lv_num1 / lv_num2.
**
**      CATCH zcx_35_log_c311 INTO DATA(lx_auth).
**        out->write( lx_auth->get_text( ) ).
**
**      CATCH cx_sy_zerodivide INTO DATA(lx_zerodiv).
**        out->write( lx_zerodiv->get_text( ) ).
**
**        lv_num2 = 5.
**        RETRY.
**
**    ENDTRY.
**
**    out->write( |Result: { lv_result }| ).
*
** Singleton
*
*  data: lo_sing1 type ref to zcl_37_log_c311,
*        lo_sing2 type ref to zcl_37_log_c311.
*
*        lo_sing1 = zcl_37_log_c311=>get_instance( ).
*        wait up to 2 seconds.
*        lo_sing2 = zcl_37_log_c311=>get_instance( ).
*
*        out->write( lo_sing1->mv_time ) .
*        out->write( lo_sing2->mv_time ) .
*
*        lo_sing1->mv_time = cl_abap_context_info=>get_system_time( ).
*
*        out->write( cl_abap_char_utilities=>newline ).
*
*        out->write( lo_sing1->mv_time ) .
*        out->write( lo_sing2->mv_time ) .
*
*    DATA(lo_process) = NEW zcl_38_log_c311( ).
*    DATA(lo_sales)   = NEW zcl_40_log_c311( ).
*    DATA(lo_billing) = NEW zcl_41_log_c311( ).
*
*    SET HANDLER lo_sales->on_modified_state FOR lo_process.
*    SET HANDLER lo_billing->on_modified_state FOR lo_process.
*
*    " Set new state
*    lo_process->set_state( iv_state = 'New Sales 01 - Mobile Android - Product ID 001' ).
*    out->write( lo_process->get_state( ) ).
*
*    out->write( lo_sales->state ).
*    out->write( lo_billing->state ).
*
*     " Set new state
*    lo_process->set_state( iv_state = 'New billing 01 - Mobile Android - Product ID 001' ).
*
*    out->write( lo_sales->state ).
*    out->write( lo_billing->state ).
*
** Model View Controller
*
*    DATA: lv_name TYPE string VALUE 'Johny Lopez',
*          lv_role TYPE string VALUE 'Project Manager'.
*
*    DATA(lo_model) = NEW zcl_42_model_log_c311(
*      iv_name = lv_name
*      iv_role = lv_role ).
*
*    DATA(lo_view) = NEW zcl_43_view_log_c311( ).
*
*    DATA(lo_controller) = NEW zcl_44_controller_log_c311( ).
*
*    lo_controller->set_model( io_model = lo_model ).
*    lo_controller->set_view( io_view = lo_view ).
*
*    lo_controller->get_view( )->display_employee(
*      iv_name = lo_model->get_name( )
*      iv_role = lo_model->get_role( )
*      io_out  = out ).

    DATA(lo_factorial) = NEW zcl_45_log_c311( ).

    lo_factorial->get_factorial(
      EXPORTING
        iv_number    = 4
      IMPORTING
        ev_factorial = DATA(lv_factorial)
    ).

    out->write( lv_factorial ).


  ENDMETHOD.
ENDCLASS.
