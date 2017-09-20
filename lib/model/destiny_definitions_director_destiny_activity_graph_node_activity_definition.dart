part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition {
  /* An identifier for this node activity. It is only guaranteed to be unique within the Activity Graph. */
  @Property(name: 'nodeActivityId')
  int nodeActivityId = null;
  
/* The activity that will be activated if the user clicks on this node. Controls all activity-related information displayed on the node if it is active (the text shown in the tooltip etc) */
  @Property(name: 'activityHash')
  int activityHash = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition[nodeActivityId=$nodeActivityId, activityHash=$activityHash, ]';
  }
}

