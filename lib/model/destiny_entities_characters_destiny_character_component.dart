part of destiny2_api.api;

@Entity()
class DestinyEntitiesCharactersDestinyCharacterComponent {
  /* Every Destiny Profile has a membershipId. This is provided on the character as well for convenience. */
  @Property(name: 'membershipId')
  int membershipId = null;
  
/* membershipType tells you the platform on which the character plays. Examine the BungieMembershipType enumeration for possible values. */
  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
/* The unique identifier for the character. */
  @Property(name: 'characterId')
  int characterId = null;
  
/* The last date that the user played Destiny. */
  @Property(name: 'dateLastPlayed')
  DateTime dateLastPlayed = null;
  
/* If the user is currently playing, this is how long they've been playing. */
  @Property(name: 'minutesPlayedThisSession')
  int minutesPlayedThisSession = null;
  
/* If this value is 525,600, then they played Destiny for a year. Or they're a very dedicated Rent fan. Note that this includes idle time, not just time spent actually in activities shooting things. */
  @Property(name: 'minutesPlayedTotal')
  int minutesPlayedTotal = null;
  
/* The user's calculated \"Light Level\". Light level is an indicator of your power that mostly matters in the end game, once you've reached the maximum character level: it's a level that's dependent on the average Attack/Defense power of your items. */
  @Property(name: 'light')
  int light = null;
  
/* Your character's stats, such as Agility, Resilience, etc... *not* historical stats.  You'll have to call a different endpoint for those. */
  @Property(name: 'stats')
  Map<String, int> stats = {};
  
/* Use this hash to look up the character's DestinyRaceDefinition. */
  @Property(name: 'raceHash')
  int raceHash = null;
  
/* Use this hash to look up the character's DestinyGenderDefinition. */
  @Property(name: 'genderHash')
  int genderHash = null;
  
/* Use this hash to look up the character's DestinyClassDefinition. */
  @Property(name: 'classHash')
  int classHash = null;
  
/* Mostly for historical purposes at this point, this is an enumeration for the character's race.  It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. */
  @Property(name: 'raceType')
  DestinyDestinyRace raceType = null;
  
/* Mostly for historical purposes at this point, this is an enumeration for the character's class.  It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. */
  @Property(name: 'classType')
  DestinyDestinyClass classType = null;
  
/* Mostly for historical purposes at this point, this is an enumeration for the character's Gender.  It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. And yeah, it's an enumeration and not a boolean. Fight me. */
  @Property(name: 'genderType')
  DestinyDestinyGender genderType = null;
  
/* A shortcut path to the user's currently equipped emblem image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition. */
  @Property(name: 'emblemPath')
  String emblemPath = null;
  
/* A shortcut path to the user's currently equipped emblem background image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition. */
  @Property(name: 'emblemBackgroundPath')
  String emblemBackgroundPath = null;
  
/* The hash of the currently equipped emblem for the user. Can be used to look up the DestinyInventoryItemDefinition. */
  @Property(name: 'emblemHash')
  int emblemHash = null;
  
/* A shortcut for getting the background color of the user's currently equipped emblem without having to do a DestinyInventoryItemDefinition lookup. */
  @Property(name: 'emblemColor')
  DestinyMiscDestinyColor emblemColor = null;
  
/* The progression that indicates your character's level. Not their light level, but their character level: you know, the thing you max out a couple hours in and then ignore for the sake of light level. */
  @Property(name: 'levelProgression')
  DestinyDestinyProgression levelProgression = null;
  
/* The \"base\" level of your character, not accounting for any light level. */
  @Property(name: 'baseCharacterLevel')
  int baseCharacterLevel = null;
  
/* A number between 0 and 100, indicating the whole and fractional % remaining to get to the next character level. */
  @Property(name: 'percentToNextLevel')
  double percentToNextLevel = null;
  
/* If this Character has a title assigned to it, this is the identifier of the DestinyRecordDefinition that has that title information. */
  @Property(name: 'titleRecordHash')
  int titleRecordHash = null;
  
  DestinyEntitiesCharactersDestinyCharacterComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesCharactersDestinyCharacterComponent[membershipId=$membershipId, membershipType=$membershipType, characterId=$characterId, dateLastPlayed=$dateLastPlayed, minutesPlayedThisSession=$minutesPlayedThisSession, minutesPlayedTotal=$minutesPlayedTotal, light=$light, stats=$stats, raceHash=$raceHash, genderHash=$genderHash, classHash=$classHash, raceType=$raceType, classType=$classType, genderType=$genderType, emblemPath=$emblemPath, emblemBackgroundPath=$emblemBackgroundPath, emblemHash=$emblemHash, emblemColor=$emblemColor, levelProgression=$levelProgression, baseCharacterLevel=$baseCharacterLevel, percentToNextLevel=$percentToNextLevel, titleRecordHash=$titleRecordHash, ]';
  }
}

