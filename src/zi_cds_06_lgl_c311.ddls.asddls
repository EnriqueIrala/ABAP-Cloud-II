@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_cds_06_lgl_c311
  as select from ZI_cds_07_lgl_c311
{

  /*key travel_id          as TravelID,
      agency_id          as AgencyID,*/

      @Semantics.amount.currencyCode: 'CurrencyCode'
      min( Total_price ) as MinTotalPrice,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      max( Total_price ) as MaxTotalPrice,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum( Total_price ) as SumTOtalPrice,
      
      count( distinct Total_price ) as CountDistinctTotalPrice,
      
      count( * ) as CountAll,
      
      @Semantics.amount.currencyCode: 'CurrencyCode'
      avg( Total_price as abap.dec( 16, 2 ) ) as AVGTotalPrice,
      
      currency_code      as CurrencyCode

}
group by
    currency_code


