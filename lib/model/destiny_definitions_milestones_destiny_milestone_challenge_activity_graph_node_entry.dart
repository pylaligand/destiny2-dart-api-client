part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry {
  
  @Property(name: 'activityGraphHash')
  int activityGraphHash = null;
  

  @Property(name: 'activityGraphNodeHash')
  int activityGraphNodeHash = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry[activityGraphHash=$activityGraphHash, activityGraphNodeHash=$activityGraphNodeHash, ]';
  }
}

