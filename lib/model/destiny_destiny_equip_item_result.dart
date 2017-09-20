part of destiny2_api.api;

@Entity()
class DestinyDestinyEquipItemResult {
  /* The instance ID of the item in question (all items that can be equipped must, but definition, be Instanced and thus have an Instance ID that you can use to refer to them) */
  @Property(name: 'itemInstanceId')
  int itemInstanceId = null;
  
/* A PlatformErrorCodes enum indicating whether it succeeded, and if it failed why. */
  @Property(name: 'equipStatus')
  Object equipStatus = null;
  
  DestinyDestinyEquipItemResult();

  @override
  String toString()  {
    return 'DestinyDestinyEquipItemResult[itemInstanceId=$itemInstanceId, equipStatus=$equipStatus, ]';
  }
}

