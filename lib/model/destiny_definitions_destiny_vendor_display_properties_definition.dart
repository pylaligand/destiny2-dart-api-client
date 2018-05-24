part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition {
  /* I regret calling this a \"large icon\". It's more like a medium-sized image with a picture of the vendor's mug on it, trying their best to look cool. Not what one would call an icon. */
  @Property(name: 'largeIcon')
  String largeIcon = null;
  

  @Property(name: 'subtitle')
  String subtitle = null;
  
/* If we replaced the icon with something more glitzy, this is the original icon that the vendor had according to the game's content. It may be more lame and/or have less razzle-dazzle. But who am I to tell you which icon to use. */
  @Property(name: 'originalIcon')
  String originalIcon = null;
  
/* Vendors, in addition to expected display property data, may also show some \"common requirements\" as statically defined definition data. This might be when a vendor accepts a single type of currency, or when the currency is unique to the vendor and the designers wanted to show that currency when you interact with the vendor. */
  @Property(name: 'requirementsDisplay')
  List<DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition> requirementsDisplay = [];
  
/* This is the icon used in parts of the game UI such as the vendor's waypoint. */
  @Property(name: 'smallTransparentIcon')
  String smallTransparentIcon = null;
  
/* This is the icon used in the map overview, when the vendor is located on the map. */
  @Property(name: 'mapIcon')
  String mapIcon = null;
  
/* This is apparently the \"Watermark\". I am not certain offhand where this is actually used in the Game UI, but some people may find it useful. */
  @Property(name: 'largeTransparentIcon')
  String largeTransparentIcon = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'name')
  String name = null;
  
/* Note that \"icon\" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.  But usually, it will be a small square image that you can use as... well, an icon. */
  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'hasIcon')
  bool hasIcon = null;
  
  DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition[largeIcon=$largeIcon, subtitle=$subtitle, originalIcon=$originalIcon, requirementsDisplay=$requirementsDisplay, smallTransparentIcon=$smallTransparentIcon, mapIcon=$mapIcon, largeTransparentIcon=$largeTransparentIcon, description=$description, name=$name, icon=$icon, hasIcon=$hasIcon, ]';
  }
}

