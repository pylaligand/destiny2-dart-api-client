part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition {
  /* The localized string for the category title. This will be something describing the items you can get as a group, or your likelihood/the quantity you'll get. */
  @Property(name: 'categoryDescription')
  String categoryDescription = null;
  
/* This is the list of all of the items for this category and the basic properties we'll know about them. */
  @Property(name: 'items')
  List<DestinyDefinitionsItemsDestinyDerivedItemDefinition> items = [];
  
  DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition[categoryDescription=$categoryDescription, items=$items, ]';
  }
}

