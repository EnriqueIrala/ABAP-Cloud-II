@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AVG - Type Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_cds_07_lgl_c311
  as select from /dmo/travel
{
  key travel_id,
      agency_id,

      cast( total_price as abap.dec( 16, 2 )) as Total_price,
      currency_code
}
