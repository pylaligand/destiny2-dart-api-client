part of destiny2_api.api;

@Entity()
class DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock {
  
  @Property(name: 'acquireMaterialRequirementHash')
  int acquireMaterialRequirementHash = null;
  

  @Property(name: 'acquireTimestampUnlockValueHash')
  int acquireTimestampUnlockValueHash = null;
  
  DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock[acquireMaterialRequirementHash=$acquireMaterialRequirementHash, acquireTimestampUnlockValueHash=$acquireTimestampUnlockValueHash, ]';
  }
}

