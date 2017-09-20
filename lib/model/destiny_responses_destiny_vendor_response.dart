part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyVendorResponse {
  /* The base properties of the vendor.  COMPONENT TYPE: Vendors */
  @Property(name: 'vendor')
  Object vendor = null;
  
/* Categories that the vendor has available, and references to the sales therein.  COMPONENT TYPE: VendorCategories */
  @Property(name: 'categories')
  Object categories = null;
  
/* Sales, keyed by the vendorItemIndex of the item being sold.  COMPONENT TYPE: VendorSales */
  @Property(name: 'sales')
  Object sales = null;
  
/* Item components, keyed by the vendorItemIndex of the active sale items.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
  @Property(name: 'items')
  Object items = null;
  
  DestinyResponsesDestinyVendorResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyVendorResponse[vendor=$vendor, categories=$categories, sales=$sales, items=$items, ]';
  }
}

