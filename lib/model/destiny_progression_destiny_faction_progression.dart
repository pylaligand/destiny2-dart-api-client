part of destiny2_api.api;

@Entity()
class DestinyProgressionDestinyFactionProgression {
  /* The hash identifier of the Faction related to this progression. Use it to look up the DestinyFactionDefinition for more rendering info. */
  @Property(name: 'factionHash')
  int factionHash = null;
  
/* The index of the Faction vendor that is currently available. Will be set to -1 if no vendors are available. */
  @Property(name: 'factionVendorIndex')
  int factionVendorIndex = null;
  
/* The hash identifier of the Progression in question. Use it to look up the DestinyProgressionDefinition in static data. */
  @Property(name: 'progressionHash')
  int progressionHash = null;
  
/* The amount of progress earned today for this progression. */
  @Property(name: 'dailyProgress')
  int dailyProgress = null;
  
/* If this progression has a daily limit, this is that limit. */
  @Property(name: 'dailyLimit')
  int dailyLimit = null;
  
/* The amount of progress earned toward this progression in the current week. */
  @Property(name: 'weeklyProgress')
  int weeklyProgress = null;
  
/* If this progression has a weekly limit, this is that limit. */
  @Property(name: 'weeklyLimit')
  int weeklyLimit = null;
  
/* This is the total amount of progress obtained overall for this progression (for instance, the total amount of Character Level experience earned) */
  @Property(name: 'currentProgress')
  int currentProgress = null;
  
/* This is the level of the progression (for instance, the Character Level). */
  @Property(name: 'level')
  int level = null;
  
/* This is the maximum possible level you can achieve for this progression (for example, the maximum character level obtainable) */
  @Property(name: 'levelCap')
  int levelCap = null;
  
/* Progressions define their levels in \"steps\". Since the last step may be repeatable, the user may be at a higher level than the actual Step achieved in the progression. Not necessarily useful, but potentially interesting for those cruising the API. Relate this to the \"steps\" property of the DestinyProgression to see which step the user is on, if you care about that. (Note that this is Content Version dependent since it refers to indexes.) */
  @Property(name: 'stepIndex')
  int stepIndex = null;
  
/* The amount of progression (i.e. \"Experience\") needed to reach the next level of this Progression. Jeez, progression is such an overloaded word. */
  @Property(name: 'progressToNextLevel')
  int progressToNextLevel = null;
  
/* The total amount of progression (i.e. \"Experience\") needed in order to reach the next level. */
  @Property(name: 'nextLevelAt')
  int nextLevelAt = null;
  
  DestinyProgressionDestinyFactionProgression();

  @override
  String toString()  {
    return 'DestinyProgressionDestinyFactionProgression[factionHash=$factionHash, factionVendorIndex=$factionVendorIndex, progressionHash=$progressionHash, dailyProgress=$dailyProgress, dailyLimit=$dailyLimit, weeklyProgress=$weeklyProgress, weeklyLimit=$weeklyLimit, currentProgress=$currentProgress, level=$level, levelCap=$levelCap, stepIndex=$stepIndex, progressToNextLevel=$progressToNextLevel, nextLevelAt=$nextLevelAt, ]';
  }
}

