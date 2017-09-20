part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition {
  
  @Property(name: 'largeIcon')
  String largeIcon = null;
  

  @Property(name: 'subtitle')
  String subtitle = null;
  
/* Vendors, in addition to expected display property data, may also show some \"common requirements\" as statically defined definition data. This might be when a vendor accepts a single type of currency, or when the currency is unique to the vendor and the designers wanted to show that currency when you interact with the vendor. */
  @Property(name: 'requirementsDisplay')
  List<DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition> requirementsDisplay = [];
  

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
    return 'DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition[largeIcon=$largeIcon, subtitle=$subtitle, requirementsDisplay=$requirementsDisplay, description=$description, name=$name, icon=$icon, hasIcon=$hasIcon, ]';
  }
}

