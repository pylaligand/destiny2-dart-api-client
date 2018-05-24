part of destiny2_api.api;

@Entity()
class DestinyComponentsVendorsDestinyVendorSaleItemSetComponent {
  /* The items being sold by this vendor, keyed by the vendorItemIndex of the item being sold. (because showing sale items depends on the ordering dictated by the categories being shown - see DestinyVendorCategoryComponent - this is a dictionary for quick lookup capability.) */
  @Property(name: 'saleItems')
  Map<String, DestinyEntitiesVendorsDestinyVendorSaleItemComponent> saleItems = {};
  
  DestinyComponentsVendorsDestinyVendorSaleItemSetComponent();

  @override
  String toString()  {
    return 'DestinyComponentsVendorsDestinyVendorSaleItemSetComponent[saleItems=$saleItems, ]';
  }
}

