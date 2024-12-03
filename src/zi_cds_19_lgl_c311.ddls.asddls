@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association-Nav. with Path Exp. II'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_19_LGL_C311
  as select from /dmo/booking

  association [1..1] to ZI_CDS_18_LGL_C311 as _Travel on _Travel.TravelID = $projection.TravelId

{

  key travel_id     as TravelId,
  key booking_id    as BookingId,
      booking_date  as BookingDate,
      customer_id   as CustomerId,
      carrier_id    as CarrierId,
      connection_id as ConnId,
      flight_date   as FlightDate,
      _Travel

}
