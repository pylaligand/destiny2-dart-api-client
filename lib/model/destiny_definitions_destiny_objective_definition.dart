part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyObjectiveDefinition {
  /* Ideally, this should tell you what your task is. I'm not going to lie to you though. Sometimes this doesn't have useful information at all. Which sucks, but there's nothing either of us can do about it. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The value that the unlock value defined in unlockValueHash must reach in order for the objective to be considered Completed. Used in calculating progress and completion status. */
  @Property(name: 'completionValue')
  int completionValue = null;
  
/* A shortcut for determining the most restrictive gating that this Objective is set to use. This includes both the dynamic determination of progress and of completion values. See the DestinyGatingScope enum's documentation for more details. */
  @Property(name: 'scope')
  DestinyDestinyGatingScope scope = null;
  
/* OPTIONAL: a hash identifier for the location at which this objective must be accomplished, if there is a location defined. Look up the DestinyLocationDefinition for this hash for that additional location info. */
  @Property(name: 'locationHash')
  int locationHash = null;
  
/* If true, the value is allowed to go negative. */
  @Property(name: 'allowNegativeValue')
  bool allowNegativeValue = null;
  
/* If true, you can effectively \"un-complete\" this objective if you lose progress after crossing the completion threshold.   If False, once you complete the task it will remain completed forever by locking the value. */
  @Property(name: 'allowValueChangeWhenCompleted')
  bool allowValueChangeWhenCompleted = null;
  
/* If true, completion means having an unlock value less than or equal to the completionValue.  If False, completion means having an unlock value greater than or equal to the completionValue. */
  @Property(name: 'isCountingDownward')
  bool isCountingDownward = null;
  
/* The UI style applied to the objective. It's an enum, take a look at DestinyUnlockValueUIStyle for details of the possible styles. Use this info as you wish to customize your UI. */
  @Property(name: 'valueStyle')
  DestinyDestinyUnlockValueUIStyle valueStyle = null;
  
/* Text to describe the progress bar. */
  @Property(name: 'progressDescription')
  String progressDescription = null;
  
/* If this objective enables Perks intrinsically, the conditions for that enabling are defined here. */
  @Property(name: 'perks')
  DestinyDefinitionsDestinyObjectivePerkEntryDefinition perks = null;
  
/* If this objective enables modifications on a player's stats intrinsically, the conditions are defined here. */
  @Property(name: 'stats')
  DestinyDefinitionsDestinyObjectiveStatEntryDefinition stats = null;
  
/* If nonzero, this is the minimum value at which the objective's progression should be shown. Otherwise, don't show it yet. */
  @Property(name: 'minimumVisibilityThreshold')
  int minimumVisibilityThreshold = null;
  
/* If True, the progress will continue even beyond the point where the objective met its minimum completion requirements. Your UI will have to accommodate it. */
  @Property(name: 'allowOvercompletion')
  bool allowOvercompletion = null;
  
/* If True, you should continue showing the progression value in the UI after it's complete. I mean, we already do that in BNet anyways, but if you want to be better behaved than us you could honor this flag. */
  @Property(name: 'showValueOnComplete')
  bool showValueOnComplete = null;
  
/* The style to use when the objective is completed. */
  @Property(name: 'completedValueStyle')
  DestinyDestinyUnlockValueUIStyle completedValueStyle = null;
  
/* The style to use when the objective is still in progress. */
  @Property(name: 'inProgressValueStyle')
  DestinyDestinyUnlockValueUIStyle inProgressValueStyle = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyObjectiveDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyObjectiveDefinition[displayProperties=$displayProperties, completionValue=$completionValue, scope=$scope, locationHash=$locationHash, allowNegativeValue=$allowNegativeValue, allowValueChangeWhenCompleted=$allowValueChangeWhenCompleted, isCountingDownward=$isCountingDownward, valueStyle=$valueStyle, progressDescription=$progressDescription, perks=$perks, stats=$stats, minimumVisibilityThreshold=$minimumVisibilityThreshold, allowOvercompletion=$allowOvercompletion, showValueOnComplete=$showValueOnComplete, completedValueStyle=$completedValueStyle, inProgressValueStyle=$inProgressValueStyle, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

