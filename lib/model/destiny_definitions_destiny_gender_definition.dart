part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyGenderDefinition {
  /* This is a quick reference enumeration for all of the currently defined Genders. We use the enumeration for quicker lookups in related data, like DestinyClassDefinition.genderedClassNames. */
  @Property(name: 'genderType')
  DestinyDestinyGender genderType = null;
  

  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyGenderDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyGenderDefinition[genderType=$genderType, displayProperties=$displayProperties, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

