part of destiny2_api.api;

@Entity()
class FireteamFireteamSummary {
  
  @Property(name: 'fireteamId')
  int fireteamId = null;
  

  @Property(name: 'groupId')
  int groupId = null;
  

  @Property(name: 'platform')
  FireteamFireteamPlatform platform = null;
  

  @Property(name: 'activityType')
  FireteamFireteamActivityType activityType = null;
  

  @Property(name: 'isImmediate')
  bool isImmediate = null;
  

  @Property(name: 'scheduledTime')
  DateTime scheduledTime = null;
  

  @Property(name: 'ownerMembershipId')
  int ownerMembershipId = null;
  

  @Property(name: 'playerSlotCount')
  int playerSlotCount = null;
  

  @Property(name: 'alternateSlotCount')
  int alternateSlotCount = null;
  

  @Property(name: 'availablePlayerSlotCount')
  int availablePlayerSlotCount = null;
  

  @Property(name: 'availableAlternateSlotCount')
  int availableAlternateSlotCount = null;
  

  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'dateCreated')
  DateTime dateCreated = null;
  

  @Property(name: 'dateModified')
  DateTime dateModified = null;
  

  @Property(name: 'isPublic')
  bool isPublic = null;
  

  @Property(name: 'locale')
  String locale = null;
  

  @Property(name: 'isValid')
  bool isValid = null;
  

  @Property(name: 'datePlayerModified')
  DateTime datePlayerModified = null;
  
  FireteamFireteamSummary();

  @override
  String toString()  {
    return 'FireteamFireteamSummary[fireteamId=$fireteamId, groupId=$groupId, platform=$platform, activityType=$activityType, isImmediate=$isImmediate, scheduledTime=$scheduledTime, ownerMembershipId=$ownerMembershipId, playerSlotCount=$playerSlotCount, alternateSlotCount=$alternateSlotCount, availablePlayerSlotCount=$availablePlayerSlotCount, availableAlternateSlotCount=$availableAlternateSlotCount, title=$title, dateCreated=$dateCreated, dateModified=$dateModified, isPublic=$isPublic, locale=$locale, isValid=$isValid, datePlayerModified=$datePlayerModified, ]';
  }
}

