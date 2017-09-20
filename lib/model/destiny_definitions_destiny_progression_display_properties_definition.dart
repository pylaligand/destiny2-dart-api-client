part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition {
  /* When progressions show your \"experience\" gained, that bar has units (i.e. \"Experience\", \"Bad Dudes Snuffed Out\", whatever). This is the localized string for that unit of measurement. */
  @Property(name: 'displayUnitsName')
  String displayUnitsName = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  
/* Note that \"icon\" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.  But usually, it will be a small square image that you can use as... well, an icon. */
  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'hasIcon')
  bool hasIcon = null;
  
  DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition[displayUnitsName=$displayUnitsName, description=$description, name=$name, icon=$icon, hasIcon=$hasIcon, ]';
  }
}

