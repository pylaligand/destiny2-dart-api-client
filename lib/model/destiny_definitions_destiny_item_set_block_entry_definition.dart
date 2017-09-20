part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSetBlockEntryDefinition {
  /* Used for tracking which step a user reached. These values will be populated in the user's internal state, which we expose externally as a more usable DestinyQuestStatus object. If this item has been obtained, this value will be set in trackingUnlockValueHash. */
  @Property(name: 'trackingValue')
  int trackingValue = null;
  
/* This is the hash identifier for a DestinyInventoryItemDefinition representing this quest step. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
  DestinyDefinitionsDestinyItemSetBlockEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSetBlockEntryDefinition[trackingValue=$trackingValue, itemHash=$itemHash, ]';
  }
}

