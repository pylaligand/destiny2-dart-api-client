part of destiny2_api.api;

@Entity()
class DestinyQuestsDestinyQuestStatus {
  /* The hash identifier for the Quest Item. (Note: Quests are defined as Items, and thus you would use this to look up the quest's DestinyInventoryItemDefinition). For information on all steps in the quest, you can then examine its DestinyInventoryItemDefinition.setData property for Quest Steps (which are *also* items). You can use the Item Definition to display human readable data about the overall quest. */
  @Property(name: 'questHash')
  int questHash = null;
  
/* The hash identifier of the current Quest Step, which is also a DestinyInventoryItemDefinition. You can use this to get human readable data about the current step and what to do in that step. */
  @Property(name: 'stepHash')
  int stepHash = null;
  
/* A step can have multiple objectives. This will give you the progress for each objective in the current step, in the order in which they are rendered in-game. */
  @Property(name: 'stepObjectives')
  List<DestinyQuestsDestinyObjectiveProgress> stepObjectives = [];
  
/* Whether or not the quest is tracked */
  @Property(name: 'tracked')
  bool tracked = null;
  
/* The current Quest Step will be an instanced item in the player's inventory. If you care about that, this is the instance ID of that item. */
  @Property(name: 'itemInstanceId')
  int itemInstanceId = null;
  
/* Whether or not the whole quest has been completed, regardless of whether or not you have redeemed the rewards for the quest. */
  @Property(name: 'completed')
  bool completed = null;
  
/* Whether or not you have redeemed rewards for this quest. */
  @Property(name: 'redeemed')
  bool redeemed = null;
  
/* Whether or not you have started this quest. */
  @Property(name: 'started')
  bool started = null;
  
/* If the quest has a related Vendor that you should talk to in order to initiate the quest/earn rewards/continue the quest, this will be the hash identifier of that Vendor. Look it up its DestinyVendorDefinition. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
  DestinyQuestsDestinyQuestStatus();

  @override
  String toString()  {
    return 'DestinyQuestsDestinyQuestStatus[questHash=$questHash, stepHash=$stepHash, stepObjectives=$stepObjectives, tracked=$tracked, itemInstanceId=$itemInstanceId, completed=$completed, redeemed=$redeemed, started=$started, vendorHash=$vendorHash, ]';
  }
}

