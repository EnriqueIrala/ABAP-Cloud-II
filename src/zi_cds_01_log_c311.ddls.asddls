@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ObjectModel.semanticKey: [ 'AirlineID', 'ConnectionId', 'FlightDate' ]
define view entity zi_cds_01_log_c311
  as select from /dmo/flight
{
  key carrier_id                             as AirlineID,
  key connection_id                          as ConnectionId,
  key flight_date                            as FlightDate,
      @Semantics.amount.currencyCode: 'Currency'
      price                                  as Price,
      currency_code                          as Currency,

      'USD'                                  as CurrencyDocument,
      '20300101'                             as DateString,

      cast( '20300101' as abap.dats )        as DateDate,

      1.2                                    as FloatingPointElement,

     cast( 1.2 as abap.dec( 4, 2 ) ) as DecimalElement,

      cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as LanguajeElement


}
