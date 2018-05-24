part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaPermissionRequested {
  /* Type of advanced write action. */
  @Property(name: 'type')
  DestinyAdvancedAwaType type = null;
  
/* Item instance ID the action shall be applied to. This is optional for all but a new AwaType values. Rule of thumb is to provide the item instance ID if one is available. */
  @Property(name: 'affectedItemId')
  int affectedItemId = null;
  
/* Destiny membership type of the account to modify. */
  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
/* Destiny character ID, if applicable, that will be affected by the action. */
  @Property(name: 'characterId')
  int characterId = null;
  
  DestinyAdvancedAwaPermissionRequested();

  @override
  String toString()  {
    return 'DestinyAdvancedAwaPermissionRequested[type=$type, affectedItemId=$affectedItemId, membershipType=$membershipType, characterId=$characterId, ]';
  }
}

