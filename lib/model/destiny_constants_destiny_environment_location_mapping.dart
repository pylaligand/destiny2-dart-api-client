part of destiny2_api.api;

@Entity()
class DestinyConstantsDestinyEnvironmentLocationMapping {
  /* The location that is revealed on the director by this mapping. */
  @Property(name: 'locationHash')
  int locationHash = null;
  
/* A hint that the UI uses to figure out how this location is activated by the player. */
  @Property(name: 'activationSource')
  String activationSource = null;
  
/* If this is populated, it is the item that you must possess for this location to be active because of this mapping. (theoretically, a location can have multiple mappings, and some might require an item while others don't) */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If this is populated, this is an objective related to the location. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
/* If this is populated, this is the activity you have to be playing in order to see this location appear because of this mapping. (theoretically, a location can have multiple mappings, and some might require you to be in a specific activity when others don't) */
  @Property(name: 'activityHash')
  int activityHash = null;
  
  DestinyConstantsDestinyEnvironmentLocationMapping();

  @override
  String toString()  {
    return 'DestinyConstantsDestinyEnvironmentLocationMapping[locationHash=$locationHash, activationSource=$activationSource, itemHash=$itemHash, objectiveHash=$objectiveHash, activityHash=$activityHash, ]';
  }
}

