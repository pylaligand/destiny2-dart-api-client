part of destiny2_api.api;

@Entity()
class DestinyEntitiesVendorsDestinyVendorCategoriesComponent {
  /* The list of categories for items that the vendor sells, in rendering order.  These categories each point to a \"display category\" in the displayCategories property of the DestinyVendorDefinition, as opposed to the other categories. */
  @Property(name: 'categories')
  List<DestinyEntitiesVendorsDestinyVendorCategory> categories = [];
  
  DestinyEntitiesVendorsDestinyVendorCategoriesComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesVendorsDestinyVendorCategoriesComponent[categories=$categories, ]';
  }
}

