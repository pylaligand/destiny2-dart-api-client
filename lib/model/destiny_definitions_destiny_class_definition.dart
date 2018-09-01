part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyClassDefinition {
  /* In Destiny 1, we added a convenience Enumeration for referring to classes. We've kept it, though mostly for posterity. This is the enum value for this definition's class. */
  @Property(name: 'classType')
  DestinyDestinyClass classType = null;
  

  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* A localized string referring to the singular form of the Class's name when referred to in gendered form. Keyed by the DestinyGender. */
  @Property(name: 'genderedClassNames')
  Map<String, String> genderedClassNames = {};
  
/* Mentors don't really mean anything anymore. Don't expect this to be populated. */
  @Property(name: 'mentorVendorHash')
  int mentorVendorHash = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyClassDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyClassDefinition[classType=$classType, displayProperties=$displayProperties, genderedClassNames=$genderedClassNames, mentorVendorHash=$mentorVendorHash, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

