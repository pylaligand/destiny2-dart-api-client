part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorInteractionReplyDefinition {
  /* The rewards granted upon responding to the vendor. */
  @Property(name: 'itemRewardsSelection')
  DestinyDestinyVendorInteractionRewardSelection itemRewardsSelection = null;
  
/* The localized text for the reply. */
  @Property(name: 'reply')
  String reply = null;
  
/* An enum indicating the type of reply being made. */
  @Property(name: 'replyType')
  DestinyDestinyVendorReplyType replyType = null;
  
  DestinyDefinitionsDestinyVendorInteractionReplyDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorInteractionReplyDefinition[itemRewardsSelection=$itemRewardsSelection, reply=$reply, replyType=$replyType, ]';
  }
}

