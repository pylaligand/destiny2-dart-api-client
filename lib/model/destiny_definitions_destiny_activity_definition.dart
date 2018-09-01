part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityDefinition {
  /* The title, subtitle, and icon for the activity. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If the activity has an icon associated with a specific release (such as a DLC), this is the path to that release's icon. */
  @Property(name: 'releaseIcon')
  String releaseIcon = null;
  
/* If the activity will not be visible until a specific and known time, this will be the seconds since the Epoch when it will become visible. */
  @Property(name: 'releaseTime')
  int releaseTime = null;
  
/* The difficulty level of the activity. */
  @Property(name: 'activityLevel')
  int activityLevel = null;
  
/* The recommended light level for this activity. */
  @Property(name: 'activityLightLevel')
  int activityLightLevel = null;
  
/* The hash identifier for the Destination on which this Activity is played. Use it to look up the DestinyDestinationDefinition for human readable info about the destination. A Destination can be thought of as a more specific location than a \"Place\". For instance, if the \"Place\" is Earth, the \"Destination\" would be a specific city or region on Earth. */
  @Property(name: 'destinationHash')
  int destinationHash = null;
  
/* The hash identifier for the \"Place\" on which this Activity is played. Use it to look up the DestinyPlaceDefinition for human readable info about the Place. A Place is the largest-scoped concept for location information. For instance, if the \"Place\" is Earth, the \"Destination\" would be a specific city or region on Earth. */
  @Property(name: 'placeHash')
  int placeHash = null;
  
/* The hash identifier for the Activity Type of this Activity. You may use it to look up the DestinyActivityTypeDefinition for human readable info, but be forewarned: Playlists and many PVP Map Activities will map to generic Activity Types. You'll have to use your knowledge of the Activity Mode being played to get more specific information about what the user is playing. */
  @Property(name: 'activityTypeHash')
  int activityTypeHash = null;
  
/* The difficulty tier of the activity. */
  @Property(name: 'tier')
  int tier = null;
  
/* When Activities are completed, we generate a \"Post-Game Carnage Report\", or PGCR, with details about what happened in that activity (how many kills someone got, which team won, etc...) We use this image as the background when displaying PGCR information, and often use it when we refer to the Activity in general. */
  @Property(name: 'pgcrImage')
  String pgcrImage = null;
  
/* The expected possible rewards for the activity. These rewards may or may not be accessible for an individual player based on their character state, the account state, and even the game's state overall. But it is a useful reference for possible rewards you can earn in the activity. These match up to rewards displayed when you hover over the Activity in the in-game Director, and often refer to Placeholder or \"Dummy\" items: items that tell you what you can earn in vague terms rather than what you'll specifically be earning (partly because the game doesn't even know what you'll earn specifically until you roll for it at the end) */
  @Property(name: 'rewards')
  List<DestinyDefinitionsDestinyActivityRewardDefinition> rewards = [];
  
/* Activities can have Modifiers, as defined in DestinyActivityModifierDefinition. These are references to the modifiers that *can* be applied to that activity, along with data that we use to determine if that modifier is actually active at any given point in time. */
  @Property(name: 'modifiers')
  List<DestinyDefinitionsDestinyActivityModifierReferenceDefinition> modifiers = [];
  
/* If True, this Activity is actually a Playlist that refers to multiple possible specific Activities and Activity Modes. For instance, a Crucible Playlist may have references to multiple Activities (Maps) with multiple Activity Modes (specific PvP gameplay modes). If this is true, refer to the playlistItems property for the specific entries in the playlist. */
  @Property(name: 'isPlaylist')
  bool isPlaylist = null;
  
/* An activity can have many Challenges, of which any subset of them may be active for play at any given period of time. This gives the information about the challenges and data that we use to understand when they're active and what rewards they provide. Sadly, at the moment there's no central definition for challenges: much like \"Skulls\" were in Destiny 1, these are defined on individual activities and there can be many duplicates/near duplicates across the Destiny 2 ecosystem. I have it in mind to centralize these in a future revision of the API, but we are out of time. */
  @Property(name: 'challenges')
  List<DestinyDefinitionsDestinyActivityChallengeDefinition> challenges = [];
  
/* If there are status strings related to the activity and based on internal state of the game, account, or character, then this will be the definition of those strings and the states needed in order for the strings to be shown. */
  @Property(name: 'optionalUnlockStrings')
  List<DestinyDefinitionsDestinyActivityUnlockStringDefinition> optionalUnlockStrings = [];
  
/* Represents all of the possible activities that could be played in the Playlist, along with information that we can use to determine if they are active at the present time. */
  @Property(name: 'playlistItems')
  List<DestinyDefinitionsDestinyActivityPlaylistItemDefinition> playlistItems = [];
  
/* Unfortunately, in practice this is almost never populated. In theory, this is supposed to tell which Activity Graph to show if you bring up the director while in this activity. */
  @Property(name: 'activityGraphList')
  List<DestinyDefinitionsDestinyActivityGraphListEntryDefinition> activityGraphList = [];
  
/* This block of data provides information about the Activity's matchmaking attributes: how many people can join and such. */
  @Property(name: 'matchmaking')
  DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition matchmaking = null;
  
/* This block of data, if it exists, provides information about the guided game experience and restrictions for this activity. If it doesn't exist, the game is not able to be played as a guided game. */
  @Property(name: 'guidedGame')
  DestinyDefinitionsDestinyActivityGuidedBlockDefinition guidedGame = null;
  
/* If this activity had an activity mode directly defined on it, this will be the hash of that mode. */
  @Property(name: 'directActivityModeHash')
  int directActivityModeHash = null;
  
/* If the activity had an activity mode directly defined on it, this will be the enum value of that mode. */
  @Property(name: 'directActivityModeType')
  int directActivityModeType = null;
  //enum directActivityModeTypeEnum {  0,  2,  3,  4,  5,  6,  7,  9,  10,  11,  12,  13,  15,  16,  17,  18,  19,  20,  21,  22,  24,  25,  26,  27,  28,  29,  30,  31,  32,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63,  64,  };
/* The set of all possible loadout requirements that could be active for this activity. Only one will be active at any given time, and you can discover which one through activity-associated data such as Milestones that have activity info on them. */
  @Property(name: 'loadouts')
  List<DestinyDefinitionsDestinyActivityLoadoutRequirementSet> loadouts = [];
  
/* The hash identifiers for Activity Modes relevant to this activity.  Note that if this is a playlist, the specific playlist entry chosen will determine the actual activity modes that end up being relevant. */
  @Property(name: 'activityModeHashes')
  List<int> activityModeHashes = [];
  
/* The activity modes - if any - in enum form. Because we can't seem to escape the enums. */
  @Property(name: 'activityModeTypes')
  List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> activityModeTypes = [];
  
/* If true, this activity is a PVP activity or playlist. */
  @Property(name: 'isPvP')
  bool isPvP = null;
  
/* The list of phases or points of entry into an activity, along with information we can use to determine their gating and availability. */
  @Property(name: 'insertionPoints')
  List<DestinyDefinitionsDestinyActivityInsertionPointDefinition> insertionPoints = [];
  
/* A list of location mappings that are affected by this activity. Pulled out of DestinyLocationDefinitions for our/your lookup convenience. */
  @Property(name: 'activityLocationMappings')
  List<DestinyConstantsDestinyEnvironmentLocationMapping> activityLocationMappings = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyActivityDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityDefinition[displayProperties=$displayProperties, releaseIcon=$releaseIcon, releaseTime=$releaseTime, activityLevel=$activityLevel, activityLightLevel=$activityLightLevel, destinationHash=$destinationHash, placeHash=$placeHash, activityTypeHash=$activityTypeHash, tier=$tier, pgcrImage=$pgcrImage, rewards=$rewards, modifiers=$modifiers, isPlaylist=$isPlaylist, challenges=$challenges, optionalUnlockStrings=$optionalUnlockStrings, playlistItems=$playlistItems, activityGraphList=$activityGraphList, matchmaking=$matchmaking, guidedGame=$guidedGame, directActivityModeHash=$directActivityModeHash, directActivityModeType=$directActivityModeType, loadouts=$loadouts, activityModeHashes=$activityModeHashes, activityModeTypes=$activityModeTypes, isPvP=$isPvP, insertionPoints=$insertionPoints, activityLocationMappings=$activityLocationMappings, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

