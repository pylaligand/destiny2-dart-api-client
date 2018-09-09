part of destiny2_api.api;

@Entity()
class DestinyDefinitionsCollectiblesDestinyCollectibleDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* Indicates whether this Collectible's state is determined on a per-character or on an account-wide basis. */
  @Property(name: 'scope')
  DestinyDestinyScope scope = null;
  

  @Property(name: 'sourceString')
  String sourceString = null;
  

  @Property(name: 'itemHash')
  int itemHash = null;
  

  @Property(name: 'acquisitionInfo')
  DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock acquisitionInfo = null;
  

  @Property(name: 'stateInfo')
  DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock stateInfo = null;
  

  @Property(name: 'presentationInfo')
  DestinyDefinitionsPresentationDestinyPresentationChildBlock presentationInfo = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsCollectiblesDestinyCollectibleDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsCollectiblesDestinyCollectibleDefinition[displayProperties=$displayProperties, scope=$scope, sourceString=$sourceString, itemHash=$itemHash, acquisitionInfo=$acquisitionInfo, stateInfo=$stateInfo, presentationInfo=$presentationInfo, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

