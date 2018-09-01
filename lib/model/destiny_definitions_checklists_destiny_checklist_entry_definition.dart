part of destiny2_api.api;

@Entity()
class DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition {
  /* The identifier for this Checklist entry. Guaranteed unique only within this Checklist Definition, and not globally/for all checklists. */
  @Property(name: 'hash')
  int hash = null;
  
/* Even if no other associations exist, we will give you *something* for display properties. In cases where we have no associated entities, it may be as simple as a numerical identifier. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  

  @Property(name: 'destinationHash')
  int destinationHash = null;
  

  @Property(name: 'locationHash')
  int locationHash = null;
  
/* Note that a Bubble's hash doesn't uniquely identify a \"top level\" entity in Destiny. Only the combination of location and bubble can uniquely identify a place in the world of Destiny: so if bubbleHash is populated, locationHash must too be populated for it to have any meaning.  You can use this property if it is populated to look up the DestinyLocationDefinition's associated .locationReleases[].activityBubbleName property. */
  @Property(name: 'bubbleHash')
  int bubbleHash = null;
  

  @Property(name: 'activityHash')
  int activityHash = null;
  

  @Property(name: 'itemHash')
  int itemHash = null;
  

  @Property(name: 'vendorHash')
  int vendorHash = null;
  

  @Property(name: 'vendorInteractionIndex')
  int vendorInteractionIndex = null;
  
/* The scope at which this specific entry can be computed. */
  @Property(name: 'scope')
  DestinyDestinyScope scope = null;
  
  DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition[hash=$hash, displayProperties=$displayProperties, destinationHash=$destinationHash, locationHash=$locationHash, bubbleHash=$bubbleHash, activityHash=$activityHash, itemHash=$itemHash, vendorHash=$vendorHash, vendorInteractionIndex=$vendorInteractionIndex, scope=$scope, ]';
  }
}

