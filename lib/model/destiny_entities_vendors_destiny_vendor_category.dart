part of destiny2_api.api;

@Entity()
class DestinyEntitiesVendorsDestinyVendorCategory {
  /* An index into the DestinyVendorDefinition.categories property, so you can grab the display data for this category. */
  @Property(name: 'categoryIndex')
  int categoryIndex = null;
  
/* An ordered list of indexes into items being sold in this category (DestinyVendorDefinition.itemList) which will contain more information about the items being sold themselves. Can also be used to index into DestinyVendorSaleItemComponent data, if you asked for that data to be returned. */
  @Property(name: 'itemIndexes')
  List<int> itemIndexes = [];
  
  DestinyEntitiesVendorsDestinyVendorCategory();

  @override
  String toString()  {
    return 'DestinyEntitiesVendorsDestinyVendorCategory[categoryIndex=$categoryIndex, itemIndexes=$itemIndexes, ]';
  }
}

