part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyItemResponse {
  /* If the item is on a character, this will return the ID of the character that is holding the item. */
  @Property(name: 'characterId')
  int characterId = null;
  
/* Common data for the item relevant to its non-instanced properties.  COMPONENT TYPE: ItemCommonData */
  @Property(name: 'item')
  Object item = null;
  
/* Basic instance data for the item.  COMPONENT TYPE: ItemInstances */
  @Property(name: 'instance')
  Object instance = null;
  
/* Information specifically about the item's objectives.  COMPONENT TYPE: ItemObjectives */
  @Property(name: 'objectives')
  Object objectives = null;
  
/* Information specifically about the perks currently active on the item.  COMPONENT TYPE: ItemPerks */
  @Property(name: 'perks')
  Object perks = null;
  
/* Information about how to render the item in 3D.  COMPONENT TYPE: ItemRenderData */
  @Property(name: 'renderData')
  Object renderData = null;
  
/* Information about the computed stats of the item: power, defense, etc...  COMPONENT TYPE: ItemStats */
  @Property(name: 'stats')
  Object stats = null;
  
/* Information about the talent grid attached to the item. Talent nodes can provide a variety of benefits and abilities, and in Destiny 2 are used almost exclusively for the character's \"Builds\".  COMPONENT TYPE: ItemTalentGrids */
  @Property(name: 'talentGrid')
  Object talentGrid = null;
  
/* Information about the sockets of the item: which are currently active, what potential sockets you could have and the stats/abilities/perks you can gain from them.  COMPONENT TYPE: ItemSockets */
  @Property(name: 'sockets')
  Object sockets = null;
  
  DestinyResponsesDestinyItemResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyItemResponse[characterId=$characterId, item=$item, instance=$instance, objectives=$objectives, perks=$perks, renderData=$renderData, stats=$stats, talentGrid=$talentGrid, sockets=$sockets, ]';
  }
}

