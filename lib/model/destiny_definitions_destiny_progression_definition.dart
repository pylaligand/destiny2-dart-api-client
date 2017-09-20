part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyProgressionDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition displayProperties = null;
  
/* The \"Scope\" of the progression indicates the source of the progression's live data.  See the DestinyProgressionScope enum for more info: but essentially, a Progression can either be backed by a stored value, or it can be a calculated derivative of other values. */
  @Property(name: 'scope')
  Object scope = null;
  
/* If this is True, then the progression doesn't have a maximum level. */
  @Property(name: 'repeatLastStep')
  bool repeatLastStep = null;
  
/* If there's a description of how to earn this progression in the local config, this will be that localized description. */
  @Property(name: 'source')
  String source = null;
  
/* Progressions are divided into Steps, which roughly equate to \"Levels\" in the traditional sense of a Progression. Notably, the last step can be repeated indefinitely if repeatLastStep is true, meaning that the calculation for your level is not as simple as comparing your current progress to the max progress of the steps.   These and more calculations are done for you if you grab live character progression data, such as in the DestinyCharacterProgressionComponent. */
  @Property(name: 'steps')
  List<DestinyDefinitionsDestinyProgressionStepDefinition> steps = [];
  
/* If true, the Progression is something worth showing to users.  If false, BNet isn't going to show it. But that doesn't mean you can't. We're all friends here. */
  @Property(name: 'visible')
  bool visible = null;
  
/* If the value exists, this is the hash identifier for the Faction that owns this Progression.  This is purely for convenience, if you're looking at a progression and want to know if and who it's related to in terms of Faction Reputation. */
  @Property(name: 'factionHash')
  int factionHash = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyProgressionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyProgressionDefinition[displayProperties=$displayProperties, scope=$scope, repeatLastStep=$repeatLastStep, source=$source, steps=$steps, visible=$visible, factionHash=$factionHash, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

