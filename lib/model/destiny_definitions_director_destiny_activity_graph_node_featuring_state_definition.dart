part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition {
  /* The node can be highlighted in a variety of ways - the game iterates through these and finds the first FeaturingState that is valid at the present moment given the Game, Account, and Character state, and renders the node in that state. See the ActivityGraphNodeHighlightType enum for possible values. */
  @Property(name: 'highlightType')
  DestinyActivityGraphNodeHighlightType highlightType = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition[highlightType=$highlightType, ]';
  }
}

