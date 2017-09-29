part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyRaceDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* An enumeration defining the existing, known Races/Species for player characters. This value will be the enum value matching this definition. */
  @Property(name: 'raceType')
  DestinyDestinyRace raceType = null;
  
/* A localized string referring to the singular form of the Race's name when referred to in gendered form. Keyed by the DestinyGender. */
  @Property(name: 'genderedRaceNames')
  Map<String, String> genderedRaceNames = {};
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyRaceDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyRaceDefinition[displayProperties=$displayProperties, raceType=$raceType, genderedRaceNames=$genderedRaceNames, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

