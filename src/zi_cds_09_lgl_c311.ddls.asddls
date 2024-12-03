@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_cds_09_lgl_c311
  with parameters
    pFromUnit : abap.unit( 3 ),
    pToUnit   : abap.unit( 3 )

  as select from zqty_lgl
{

  key product                                            as ProductID,

      @Semantics.quantity.unitOfMeasure: 'OriginalUnit'
      quantity                                           as OriginalQuantity,
      unit                                               as OriginalUnit,

      @Semantics.quantity.unitOfMeasure: 'ConvertedUnit'
      unit_conversion( quantity => quantity,
                       source_unit => $parameters.pFromUnit,
                       target_unit => $parameters.pToUnit,
                       client => $session.client,
                       error_handling => 'SET_TO_NULL' ) as ConvertedQty,
      $parameters.pToUnit                                as ConvertedUnit

}
where
  unit = $parameters.pFromUnit;
