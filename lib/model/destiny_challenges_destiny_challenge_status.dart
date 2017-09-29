part of destiny2_api.api;

@Entity()
class DestinyChallengesDestinyChallengeStatus {
  /* The progress - including completion status - of the active challenge. */
  @Property(name: 'objective')
  DestinyQuestsDestinyObjectiveProgress objective = null;
  
  DestinyChallengesDestinyChallengeStatus();

  @override
  String toString()  {
    return 'DestinyChallengesDestinyChallengeStatus[objective=$objective, ]';
  }
}

