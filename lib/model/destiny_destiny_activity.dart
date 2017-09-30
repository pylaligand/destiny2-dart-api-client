part of destiny2_api.api;

@Entity()
class DestinyDestinyActivity {
  /* The hash identifier of the Activity. Use this to look up the DestinyActivityDefinition of the activity. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* If true, then the activity should have a \"new\" indicator in the Director UI. */
  @Property(name: 'isNew')
  bool isNew = null;
  
/* If true, the user is allowed to lead a Fireteam into this activity. */
  @Property(name: 'canLead')
  bool canLead = null;
  
/* If true, the user is allowed to join with another Fireteam in this activity. */
  @Property(name: 'canJoin')
  bool canJoin = null;
  
/* If true, we both have the ability to know that the user has completed this activity and they have completed it. Unfortunately, we can't necessarily know this for all activities. As such, this should probably only be used if you already know in advance which specific activities you wish to check. */
  @Property(name: 'isCompleted')
  bool isCompleted = null;
  
/* If true, the user should be able to see this activity. */
  @Property(name: 'isVisible')
  bool isVisible = null;
  
/* The difficulty level of the activity, if applicable. */
  @Property(name: 'displayLevel')
  int displayLevel = null;
  
/* The recommended light level for the activity, if applicable. */
  @Property(name: 'recommendedLight')
  int recommendedLight = null;
  
/* A DestinyActivityDifficultyTier enum value indicating the difficulty of the activity. */
  @Property(name: 'difficultyTier')
  DestinyDestinyActivityDifficultyTier difficultyTier = null;
  
  DestinyDestinyActivity();

  @override
  String toString()  {
    return 'DestinyDestinyActivity[activityHash=$activityHash, isNew=$isNew, canLead=$canLead, canJoin=$canJoin, isCompleted=$isCompleted, isVisible=$isVisible, displayLevel=$displayLevel, recommendedLight=$recommendedLight, difficultyTier=$difficultyTier, ]';
  }
}

