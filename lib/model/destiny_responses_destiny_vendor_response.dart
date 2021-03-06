part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyVendorResponse {
  /* The base properties of the vendor.  COMPONENT TYPE: Vendors */
  @Property(name: 'vendor')
  SingleComponentResponseOfDestinyVendorComponent vendor = null;
  
/* Categories that the vendor has available, and references to the sales therein.  COMPONENT TYPE: VendorCategories */
  @Property(name: 'categories')
  SingleComponentResponseOfDestinyVendorCategoriesComponent categories = null;
  
/* Sales, keyed by the vendorItemIndex of the item being sold.  COMPONENT TYPE: VendorSales */
  @Property(name: 'sales')
  DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent sales = null;
  
/* Item components, keyed by the vendorItemIndex of the active sale items.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
  @Property(name: 'itemComponents')
  DestinyItemComponentSetOfint32 itemComponents = null;
  
/* A \"lookup\" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.  COMPONENT TYPE: CurrencyLookups */
  @Property(name: 'currencyLookups')
  SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups = null;
  
  DestinyResponsesDestinyVendorResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyVendorResponse[vendor=$vendor, categories=$categories, sales=$sales, itemComponents=$itemComponents, currencyLookups=$currencyLookups, ]';
  }
}

