part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyLocationReleaseDefinition {
  /* Sadly, these don't appear to be populated anymore (ever?) */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If we had map information, this spawnPoint would be interesting. But sadly, we don't have that info. */
  @Property(name: 'spawnPoint')
  int spawnPoint = null;
  
/* The Destination being pointed to by this location. */
  @Property(name: 'destinationHash')
  int destinationHash = null;
  
/* The Activity being pointed to by this location. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* The Activity Graph being pointed to by this location. */
  @Property(name: 'activityGraphHash')
  int activityGraphHash = null;
  
/* The Activity Graph Node being pointed to by this location. (Remember that Activity Graph Node hashes are only unique within an Activity Graph: so use the combination to find the node being spoken of) */
  @Property(name: 'activityGraphNodeHash')
  int activityGraphNodeHash = null;
  
/* The Activity Bubble within the Destination. Look this up in the DestinyDestinationDefinition's bubbles and bubbleSettings properties. */
  @Property(name: 'activityBubbleName')
  int activityBubbleName = null;
  
/* If we had map information, this would tell us something cool about the path this location wants you to take. I wish we had map information. */
  @Property(name: 'activityPathBundle')
  int activityPathBundle = null;
  
/* If we had map information, this would tell us about path information related to destination on the map. Sad. Maybe you can do something cool with it. Go to town man. */
  @Property(name: 'activityPathDestination')
  int activityPathDestination = null;
  
/* The type of Nav Point that this represents. See the enumeration for more info. */
  @Property(name: 'navPointType')
  DestinyDestinyActivityNavPointType navPointType = null;
  
/* Looks like it should be the position on the map, but sadly it does not look populated... yet? */
  @Property(name: 'worldPosition')
  List<int> worldPosition = [];
  
  DestinyDefinitionsDestinyLocationReleaseDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyLocationReleaseDefinition[displayProperties=$displayProperties, spawnPoint=$spawnPoint, destinationHash=$destinationHash, activityHash=$activityHash, activityGraphHash=$activityGraphHash, activityGraphNodeHash=$activityGraphNodeHash, activityBubbleName=$activityBubbleName, activityPathBundle=$activityPathBundle, activityPathDestination=$activityPathDestination, navPointType=$navPointType, worldPosition=$worldPosition, ]';
  }
}

