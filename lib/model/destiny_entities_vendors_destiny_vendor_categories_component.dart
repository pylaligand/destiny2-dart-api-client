part of destiny2_api.api;

@Entity()
class DestinyEntitiesVendorsDestinyVendorCategoriesComponent {
  /* The list of categories for items that the vendor sells, in rendering order. */
  @Property(name: 'categories')
  List<DestinyEntitiesVendorsDestinyVendorCategory> categories = [];
  
  DestinyEntitiesVendorsDestinyVendorCategoriesComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesVendorsDestinyVendorCategoriesComponent[categories=$categories, ]';
  }
}

