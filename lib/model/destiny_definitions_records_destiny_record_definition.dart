part of destiny2_api.api;

@Entity()
class DestinyDefinitionsRecordsDestinyRecordDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  

  @Property(name: 'presentationInfo')
  DestinyDefinitionsPresentationDestinyPresentationChildBlock presentationInfo = null;
  

  @Property(name: 'loreHash')
  int loreHash = null;
  

  @Property(name: 'objectiveHashes')
  List<int> objectiveHashes = [];
  

  @Property(name: 'recordValueStyle')
  DestinyDestinyRecordValueStyle recordValueStyle = null;
  

  @Property(name: 'titleInfo')
  DestinyDefinitionsRecordsDestinyRecordTitleBlock titleInfo = null;
  

  @Property(name: 'completionInfo')
  DestinyDefinitionsRecordsDestinyRecordCompletionBlock completionInfo = null;
  

  @Property(name: 'stateInfo')
  DestinyDefinitionsRecordsSchemaRecordStateBlock stateInfo = null;
  

  @Property(name: 'requirements')
  DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock requirements = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsRecordsDestinyRecordDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsRecordsDestinyRecordDefinition[displayProperties=$displayProperties, presentationInfo=$presentationInfo, loreHash=$loreHash, objectiveHashes=$objectiveHashes, recordValueStyle=$recordValueStyle, titleInfo=$titleInfo, completionInfo=$completionInfo, stateInfo=$stateInfo, requirements=$requirements, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

