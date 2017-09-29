part of destiny2_api.api;

@Entity()
class DestinyDestinyActivityNavPointType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyActivityNavPointType._internal(this.value);

  static const DestinyDestinyActivityNavPointType inactive = const DestinyDestinyActivityNavPointType._internal(0);
  static const DestinyDestinyActivityNavPointType primaryObjective = const DestinyDestinyActivityNavPointType._internal(1);
  static const DestinyDestinyActivityNavPointType secondaryObjective = const DestinyDestinyActivityNavPointType._internal(2);
  static const DestinyDestinyActivityNavPointType travelObjective = const DestinyDestinyActivityNavPointType._internal(3);
  static const DestinyDestinyActivityNavPointType publicEventObjective = const DestinyDestinyActivityNavPointType._internal(4);
  static const DestinyDestinyActivityNavPointType ammoCache = const DestinyDestinyActivityNavPointType._internal(5);
  static const DestinyDestinyActivityNavPointType pointTypeFlag = const DestinyDestinyActivityNavPointType._internal(6);
  static const DestinyDestinyActivityNavPointType capturePoint = const DestinyDestinyActivityNavPointType._internal(7);
  static const DestinyDestinyActivityNavPointType defensiveEncounter = const DestinyDestinyActivityNavPointType._internal(8);
  static const DestinyDestinyActivityNavPointType ghostInteraction = const DestinyDestinyActivityNavPointType._internal(9);
  static const DestinyDestinyActivityNavPointType killAi = const DestinyDestinyActivityNavPointType._internal(10);
  static const DestinyDestinyActivityNavPointType questItem = const DestinyDestinyActivityNavPointType._internal(11);
  static const DestinyDestinyActivityNavPointType patrolMission = const DestinyDestinyActivityNavPointType._internal(12);
  static const DestinyDestinyActivityNavPointType incoming = const DestinyDestinyActivityNavPointType._internal(13);
  static const DestinyDestinyActivityNavPointType arenaObjective = const DestinyDestinyActivityNavPointType._internal(14);
  static const DestinyDestinyActivityNavPointType automationHint = const DestinyDestinyActivityNavPointType._internal(15);
  static const DestinyDestinyActivityNavPointType trackedQuest = const DestinyDestinyActivityNavPointType._internal(16);
}

class DestinyDestinyActivityNavPointTypeTypeTransformer extends TypeTransformer<DestinyDestinyActivityNavPointType> {

  @override
  dynamic encode(DestinyDestinyActivityNavPointType data) {
    return data.value;
  }

  @override
  DestinyDestinyActivityNavPointType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyActivityNavPointType.inactive;
      case 1: return DestinyDestinyActivityNavPointType.primaryObjective;
      case 2: return DestinyDestinyActivityNavPointType.secondaryObjective;
      case 3: return DestinyDestinyActivityNavPointType.travelObjective;
      case 4: return DestinyDestinyActivityNavPointType.publicEventObjective;
      case 5: return DestinyDestinyActivityNavPointType.ammoCache;
      case 6: return DestinyDestinyActivityNavPointType.pointTypeFlag;
      case 7: return DestinyDestinyActivityNavPointType.capturePoint;
      case 8: return DestinyDestinyActivityNavPointType.defensiveEncounter;
      case 9: return DestinyDestinyActivityNavPointType.ghostInteraction;
      case 10: return DestinyDestinyActivityNavPointType.killAi;
      case 11: return DestinyDestinyActivityNavPointType.questItem;
      case 12: return DestinyDestinyActivityNavPointType.patrolMission;
      case 13: return DestinyDestinyActivityNavPointType.incoming;
      case 14: return DestinyDestinyActivityNavPointType.arenaObjective;
      case 15: return DestinyDestinyActivityNavPointType.automationHint;
      case 16: return DestinyDestinyActivityNavPointType.trackedQuest;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

