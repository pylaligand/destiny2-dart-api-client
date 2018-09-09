part of destiny2_api.api;

@Entity()
class DestinyQuestsDestinyObjectiveProgress {
  /* The unique identifier of the Objective being referred to. Use to look up the DestinyObjectiveDefinition in static data. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
/* If the Objective has a Destination associated with it, this is the unique identifier of the Destination being referred to. Use to look up the DestinyDestinationDefinition in static data. This will give localized data about *where* in the universe the objective should be achieved. */
  @Property(name: 'destinationHash')
  int destinationHash = null;
  
/* If the Objective has an Activity associated with it, this is the unique identifier of the Activity being referred to. Use to look up the DestinyActivityDefinition in static data. This will give localized data about *what* you should be playing for the objective to be achieved. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* If progress has been made, and the progress can be measured numerically, this will be the value of that progress. You can compare it to the DestinyObjectiveDefinition.completionValue property for current vs. upper bounds, and use DestinyObjectiveDefinition.valueStyle to determine how this should be rendered. Note that progress, in Destiny 2, need not be a literal numeric progression. It could be one of a number of possible values, even a Timestamp. Always examine DestinyObjectiveDefinition.valueStyle before rendering progress. */
  @Property(name: 'progress')
  int progress = null;
  
/* As of Forsaken, objectives' completion value is determined dynamically at runtime.  This value represents the threshold of progress you need to surpass in order for this objective to be considered \"complete\".  If you were using objective data, switch from using the DestinyObjectiveDefinition's \"completionValue\" to this value. */
  @Property(name: 'completionValue')
  int completionValue = null;
  
/* Whether or not the Objective is completed. */
  @Property(name: 'complete')
  bool complete = null;
  
/* If this is true, the objective is visible in-game. Otherwise, it's not yet visible to the player. Up to you if you want to honor this property. */
  @Property(name: 'visible')
  bool visible = null;
  
  DestinyQuestsDestinyObjectiveProgress();

  @override
  String toString()  {
    return 'DestinyQuestsDestinyObjectiveProgress[objectiveHash=$objectiveHash, destinationHash=$destinationHash, activityHash=$activityHash, progress=$progress, completionValue=$completionValue, complete=$complete, visible=$visible, ]';
  }
}

