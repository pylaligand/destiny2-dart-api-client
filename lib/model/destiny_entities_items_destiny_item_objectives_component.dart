part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemObjectivesComponent {
  /* If the item has a hard association with objectives, your progress on them will be defined here.   Objectives are our standard way to describe a series of tasks that have to be completed for a reward. */
  @Property(name: 'objectives')
  List<DestinyQuestsDestinyObjectiveProgress> objectives = [];
  
  DestinyEntitiesItemsDestinyItemObjectivesComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemObjectivesComponent[objectives=$objectives, ]';
  }
}

