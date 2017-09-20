part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition {
  /* If TRUE, the activity is matchmade. Otherwise, it requires explicit forming of a party. */
  @Property(name: 'isMatchmade')
  bool isMatchmade = null;
  
/* The minimum # of people in the fireteam for the activity to launch. */
  @Property(name: 'minParty')
  int minParty = null;
  
/* The maximum # of people allowed in a Fireteam. */
  @Property(name: 'maxParty')
  int maxParty = null;
  
/* The maximum # of people allowed across all teams in the activity. */
  @Property(name: 'maxPlayers')
  int maxPlayers = null;
  
/* If true, you have to Solemnly Swear to be up to Nothing But Good(tm) to play. */
  @Property(name: 'requiresGuardianOath')
  bool requiresGuardianOath = null;
  
  DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition[isMatchmade=$isMatchmade, minParty=$minParty, maxParty=$maxParty, maxPlayers=$maxPlayers, requiresGuardianOath=$requiresGuardianOath, ]';
  }
}

