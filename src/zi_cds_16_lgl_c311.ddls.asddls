@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association Filter with Path Expression'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_cds_16_lgl_c311
  as select from /dmo/travel
  
  association[0..*] to I_CurrencyText as _Currency on _Currency.Currency = $projection.Currency

{
   key travel_id as TRavelID,
   @Semantics.amount.currencyCode: 'Currency'
   total_price as Price,
   currency_code as Currency,
   _Currency[1:Language = $session.system_language ].CurrencyName
  }
