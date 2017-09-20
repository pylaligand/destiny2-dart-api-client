part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyCharacterResponse {
  /* The character-level non-equipped inventory items.  COMPONENT TYPE: CharacterInventories */
  @Property(name: 'inventory')
  Object inventory = null;
  
/* Base information about the character in question.  COMPONENT TYPE: Characters */
  @Property(name: 'character')
  Object character = null;
  
/* Character progression data, including Milestones.  COMPONENT TYPE: CharacterProgressions */
  @Property(name: 'progressions')
  Object progressions = null;
  
/* Character rendering data - a minimal set of information about equipment and dyes used for rendering.  COMPONENT TYPE: CharacterRenderData */
  @Property(name: 'renderData')
  Object renderData = null;
  
/* Activity data - info about current activities available to the player.  COMPONENT TYPE: CharacterActivities */
  @Property(name: 'activities')
  Object activities = null;
  
/* Equipped items on the character.  COMPONENT TYPE: CharacterEquipment */
  @Property(name: 'equipment')
  Object equipment = null;
  
/* Items available from Kiosks that are available to this specific character.   COMPONENT TYPE: Kiosks */
  @Property(name: 'kiosks')
  Object kiosks = null;
  
/* The set of components belonging to the player's instanced items.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
  @Property(name: 'itemComponents')
  Object itemComponents = null;
  
  DestinyResponsesDestinyCharacterResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyCharacterResponse[inventory=$inventory, character=$character, progressions=$progressions, renderData=$renderData, activities=$activities, equipment=$equipment, kiosks=$kiosks, itemComponents=$itemComponents, ]';
  }
}

