part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyDisplayCategoryDefinition {
  /* A string identifier for the display category. */
  @Property(name: 'identifier')
  String identifier = null;
  

  @Property(name: 'displayCategoryHash')
  int displayCategoryHash = null;
  

  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If true, this category should be displayed in the \"Banner\" section of the vendor's UI. */
  @Property(name: 'displayInBanner')
  bool displayInBanner = null;
  
/* If it exists, this is the hash identifier of a DestinyProgressionDefinition that represents the progression to show on this display category.  Specific categories can now have thier own distinct progression, apparently. So that's cool. */
  @Property(name: 'progressionHash')
  int progressionHash = null;
  
/* If this category sorts items in a nonstandard way, this will be the way we sort. */
  @Property(name: 'sortOrder')
  DestinyVendorDisplayCategorySortOrder sortOrder = null;
  
/* An indicator of how the category will be displayed in the UI. It's up to you to do something cool or interesting in response to this, or just to treat it as a normal category. */
  @Property(name: 'displayStyleHash')
  int displayStyleHash = null;
  
/* An indicator of how the category will be displayed in the UI. It's up to you to do something cool or interesting in response to this, or just to treat it as a normal category. */
  @Property(name: 'displayStyleIdentifier')
  String displayStyleIdentifier = null;
  
  DestinyDefinitionsDestinyDisplayCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyDisplayCategoryDefinition[identifier=$identifier, displayCategoryHash=$displayCategoryHash, displayProperties=$displayProperties, displayInBanner=$displayInBanner, progressionHash=$progressionHash, sortOrder=$sortOrder, displayStyleHash=$displayStyleHash, displayStyleIdentifier=$displayStyleIdentifier, ]';
  }
}

