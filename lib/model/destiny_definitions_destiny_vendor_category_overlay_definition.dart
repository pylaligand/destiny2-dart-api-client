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
  
  DestinyDefinitionsDestinyVendorCategoryOverlayDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorCategoryOverlayDefinition[choiceDescription=$choiceDescription, description=$description, icon=$icon, title=$title, ]';
  }
}

