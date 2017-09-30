part of destiny2_api.api;

@Entity()
class DestinyDestinyTalentNodeState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyTalentNodeState._internal(this.value);

  static const DestinyDestinyTalentNodeState invalid = const DestinyDestinyTalentNodeState._internal(0);
  static const DestinyDestinyTalentNodeState canUpgrade = const DestinyDestinyTalentNodeState._internal(1);
  static const DestinyDestinyTalentNodeState noPoints = const DestinyDestinyTalentNodeState._internal(2);
  static const DestinyDestinyTalentNodeState noPrerequisites = const DestinyDestinyTalentNodeState._internal(3);
  static const DestinyDestinyTalentNodeState noSteps = const DestinyDestinyTalentNodeState._internal(4);
  static const DestinyDestinyTalentNodeState noUnlock = const DestinyDestinyTalentNodeState._internal(5);
  static const DestinyDestinyTalentNodeState noMaterial = const DestinyDestinyTalentNodeState._internal(6);
  static const DestinyDestinyTalentNodeState noGridLevel = const DestinyDestinyTalentNodeState._internal(7);
  static const DestinyDestinyTalentNodeState swappingLocked = const DestinyDestinyTalentNodeState._internal(8);
  static const DestinyDestinyTalentNodeState mustSwap = const DestinyDestinyTalentNodeState._internal(9);
  static const DestinyDestinyTalentNodeState complete = const DestinyDestinyTalentNodeState._internal(10);
  static const DestinyDestinyTalentNodeState unknown = const DestinyDestinyTalentNodeState._internal(11);
  static const DestinyDestinyTalentNodeState creationOnly = const DestinyDestinyTalentNodeState._internal(12);
  static const DestinyDestinyTalentNodeState hidden = const DestinyDestinyTalentNodeState._internal(13);
}

class DestinyDestinyTalentNodeStateTypeTransformer extends TypeTransformer<DestinyDestinyTalentNodeState> {

  @override
  dynamic encode(DestinyDestinyTalentNodeState data) {
    return data.value;
  }

  @override
  DestinyDestinyTalentNodeState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyTalentNodeState.invalid;
      case 1: return DestinyDestinyTalentNodeState.canUpgrade;
      case 2: return DestinyDestinyTalentNodeState.noPoints;
      case 3: return DestinyDestinyTalentNodeState.noPrerequisites;
      case 4: return DestinyDestinyTalentNodeState.noSteps;
      case 5: return DestinyDestinyTalentNodeState.noUnlock;
      case 6: return DestinyDestinyTalentNodeState.noMaterial;
      case 7: return DestinyDestinyTalentNodeState.noGridLevel;
      case 8: return DestinyDestinyTalentNodeState.swappingLocked;
      case 9: return DestinyDestinyTalentNodeState.mustSwap;
      case 10: return DestinyDestinyTalentNodeState.complete;
      case 11: return DestinyDestinyTalentNodeState.unknown;
      case 12: return DestinyDestinyTalentNodeState.creationOnly;
      case 13: return DestinyDestinyTalentNodeState.hidden;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

