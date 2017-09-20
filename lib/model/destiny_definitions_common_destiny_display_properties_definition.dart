part of destiny2_api.api;

@Entity()
class DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  
/* Note that \"icon\" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.  But usually, it will be a small square image that you can use as... well, an icon. */
  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'hasIcon')
  bool hasIcon = null;
  
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition[description=$description, name=$name, icon=$icon, hasIcon=$hasIcon, ]';
  }
}

