part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorInteractionDefinition {
  /* The potential replies that the user can make to the interaction. */
  @Property(name: 'replies')
  List<DestinyDefinitionsDestinyVendorInteractionReplyDefinition> replies = [];
  
/* If >= 0, this is the category of sale items to show along with this interaction dialog. */
  @Property(name: 'vendorCategoryIndex')
  int vendorCategoryIndex = null;
  
/* If this interaction dialog is about a quest, this is the questline related to the interaction. You can use this to show the quest overview, or even the character's status with the quest if you use it to find the character's current Quest Step by checking their inventory against this questlineItemHash's DestinyInventoryItemDefinition.setData. */
  @Property(name: 'questlineItemHash')
  int questlineItemHash = null;
  
/* If this interaction is meant to show you sacks, this is the list of types of sacks to be shown. If empty, the interaction is not meant to show sacks. */
  @Property(name: 'sackInteractionList')
  List<DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition> sackInteractionList = [];
  
/* A UI hint for the behavior of the interaction screen. BNet doesn't use this, but you can choose to. */
  @Property(name: 'uiInteractionType')
  int uiInteractionType = null;
  
/* If this interaction is displaying rewards, this is the text to use for the header of the reward-displaying section of the interaction. */
  @Property(name: 'rewardBlockLabel')
  String rewardBlockLabel = null;
  
/* If the vendor's reward list is sourced from one of his categories, this is the index into the category array of items to show. */
  @Property(name: 'rewardVendorCategoryIndex')
  int rewardVendorCategoryIndex = null;
  
/* If the vendor interaction has flavor text, this is some of it. */
  @Property(name: 'flavorLineOne')
  String flavorLineOne = null;
  
/* If the vendor interaction has flavor text, this is the rest of it. */
  @Property(name: 'flavorLineTwo')
  String flavorLineTwo = null;
  
/* The header for the interaction dialog. */
  @Property(name: 'headerDisplayProperties')
  Object headerDisplayProperties = null;
  
/* The localized text telling the player what to do when they see this dialog. */
  @Property(name: 'instructions')
  String instructions = null;
  
  DestinyDefinitionsDestinyVendorInteractionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorInteractionDefinition[replies=$replies, vendorCategoryIndex=$vendorCategoryIndex, questlineItemHash=$questlineItemHash, sackInteractionList=$sackInteractionList, uiInteractionType=$uiInteractionType, rewardBlockLabel=$rewardBlockLabel, rewardVendorCategoryIndex=$rewardVendorCategoryIndex, flavorLineOne=$flavorLineOne, flavorLineTwo=$flavorLineTwo, headerDisplayProperties=$headerDisplayProperties, instructions=$instructions, ]';
  }
}

