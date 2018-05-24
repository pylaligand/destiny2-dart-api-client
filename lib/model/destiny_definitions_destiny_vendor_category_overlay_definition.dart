part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorCategoryOverlayDefinition {
  
  @Property(name: 'choiceDescription')
  String choiceDescription = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'title')
  String title = null;
  
/* If this overlay has a currency item that it features, this is said featured item. */
  @Property(name: 'currencyItemHash')
  int currencyItemHash = null;
  
  DestinyDefinitionsDestinyVendorCategoryOverlayDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorCategoryOverlayDefinition[choiceDescription=$choiceDescription, description=$description, icon=$icon, title=$title, currencyItemHash=$currencyItemHash, ]';
  }
}

