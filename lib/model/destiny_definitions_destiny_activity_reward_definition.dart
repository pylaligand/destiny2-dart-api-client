part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityRewardDefinition {
  /* The header for the reward set, if any. */
  @Property(name: 'rewardText')
  String rewardText = null;
  
/* The \"Items provided\" in the reward. This is almost always a pointer to a DestinyInventoryItemDefintion for an item that you can't actually earn in-game, but that has name/description/icon information for the vague concept of the rewards you will receive. This is because the actual reward generation is non-deterministic and extremely complicated, so the best the game can do is tell you what you'll get in vague terms. And so too shall we.  Interesting trivia: you actually *do* earn these items when you complete the activity. They go into a single-slot bucket on your profile, which is how you see the pop-ups of these rewards when you complete an activity that match these \"dummy\" items. You can even see them if you look at the last one you earned in your profile-level inventory through the BNet API! Who said reading documentation is a waste of time? */
  @Property(name: 'rewardItems')
  List<DestinyDestinyItemQuantity> rewardItems = [];
  
  DestinyDefinitionsDestinyActivityRewardDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityRewardDefinition[rewardText=$rewardText, rewardItems=$rewardItems, ]';
  }
}
