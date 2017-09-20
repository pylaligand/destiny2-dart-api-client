part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityGuidedBlockDefinition {
  /* The maximum amount of people that can be in the waiting lobby. */
  @Property(name: 'guidedMaxLobbySize')
  int guidedMaxLobbySize = null;
  
/* The minimum amount of people that can be in the waiting lobby. */
  @Property(name: 'guidedMinLobbySize')
  int guidedMinLobbySize = null;
  
/* If -1, the guided group cannot be disbanded. Otherwise, take the total # of players in the activity and subtract this number: that is the total # of votes needed for the guided group to disband. */
  @Property(name: 'guidedDisbandCount')
  int guidedDisbandCount = null;
  
  DestinyDefinitionsDestinyActivityGuidedBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityGuidedBlockDefinition[guidedMaxLobbySize=$guidedMaxLobbySize, guidedMinLobbySize=$guidedMinLobbySize, guidedDisbandCount=$guidedDisbandCount, ]';
  }
}

