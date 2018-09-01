part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorInteractionDefinition {
  /* The position of this interaction in its parent array. Note that this is NOT content agnostic, and should not be used as such. */
  @Property(name: 'interactionIndex')
  int interactionIndex = null;
  
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
  
/* A UI hint for the behavior of the interaction screen. This is useful to determine what type of interaction is occurring, such as a prompt to receive a rank up reward or a prompt to choose a reward for completing a quest. The hash isn't as useful as the Enum in retrospect, well what can you do. Try using interactionType instead. */
  @Property(name: 'uiInteractionType')
  int uiInteractionType = null;
  
/* The enumerated version of the possible UI hints for vendor interactions, which is a little easier to grok than the hash found in uiInteractionType. */
  @Property(name: 'interactionType')
  DestinyVendorInteractionType interactionType = null;
  
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
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition headerDisplayProperties = null;
  
/* The localized text telling the player what to do when they see this dialog. */
  @Property(name: 'instructions')
  String instructions = null;
  
  DestinyDefinitionsDestinyVendorInteractionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorInteractionDefinition[interactionIndex=$interactionIndex, replies=$replies, vendorCategoryIndex=$vendorCategoryIndex, questlineItemHash=$questlineItemHash, sackInteractionList=$sackInteractionList, uiInteractionType=$uiInteractionType, interactionType=$interactionType, rewardBlockLabel=$rewardBlockLabel, rewardVendorCategoryIndex=$rewardVendorCategoryIndex, flavorLineOne=$flavorLineOne, flavorLineTwo=$flavorLineTwo, headerDisplayProperties=$headerDisplayProperties, instructions=$instructions, ]';
  }
}

