part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemObjectivesComponent {
  /* If the item has a hard association with objectives, your progress on them will be defined here.   Objectives are our standard way to describe a series of tasks that have to be completed for a reward. */
  @Property(name: 'objectives')
  List<DestinyQuestsDestinyObjectiveProgress> objectives = [];
  
/* I may regret naming it this way - but this represents when an item has an objective that doesn't serve a beneficial purpose, but rather is used for \"flavor\" or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item. */
  @Property(name: 'flavorObjective')
  DestinyQuestsDestinyObjectiveProgress flavorObjective = null;
  
/* If we have any information on when these objectives were completed, this will be the date of that completion. This won't be on many items, but could be interesting for some items that do store this information. */
  @Property(name: 'dateCompleted')
  DateTime dateCompleted = null;
  
  DestinyEntitiesItemsDestinyItemObjectivesComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemObjectivesComponent[objectives=$objectives, flavorObjective=$flavorObjective, dateCompleted=$dateCompleted, ]';
  }
}

