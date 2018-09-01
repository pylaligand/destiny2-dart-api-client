part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock {
  /* If this node is not accessible due to Entitlements (for instance, you don't own the required game expansion), this is the message to show. */
  @Property(name: 'entitlementUnavailableMessage')
  String entitlementUnavailableMessage = null;
  
  DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock[entitlementUnavailableMessage=$entitlementUnavailableMessage, ]';
  }
}

