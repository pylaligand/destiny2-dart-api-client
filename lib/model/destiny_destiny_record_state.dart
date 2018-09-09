part of destiny2_api.api;

@Entity()
class DestinyDestinyRecordState {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyRecordState._internal(this.value);

  /// If there are no flags set, the record is in a state where it *could* be redeemed, but it has not been yet.
  static const DestinyDestinyRecordState none = const DestinyDestinyRecordState._internal(0);
  /// If this is set, the completed record has been redeemed.
  static const DestinyDestinyRecordState recordRedeemed = const DestinyDestinyRecordState._internal(1);
  /// If this is set, there's a reward available from this Record but it's unavailable for redemption.
  static const DestinyDestinyRecordState rewardUnavailable = const DestinyDestinyRecordState._internal(2);
  /// If this is set, the objective for this Record has not yet been completed.
  static const DestinyDestinyRecordState objectiveNotCompleted = const DestinyDestinyRecordState._internal(4);
  /// If this is set, the game recommends that you replace the display text of this Record with DestinyRecordDefinition.stateInfo.obscuredString.
  static const DestinyDestinyRecordState obscured = const DestinyDestinyRecordState._internal(8);
  /// If this is set, the game recommends that you not show this record. Do what you will with this recommendation.
  static const DestinyDestinyRecordState invisible = const DestinyDestinyRecordState._internal(16);
  /// If this is set, you can't complete this record because you lack some permission that's required to complete it.
  static const DestinyDestinyRecordState entitlementUnowned = const DestinyDestinyRecordState._internal(32);
  /// If this is set, the record has a title (check DestinyRecordDefinition for title info) and you can equip it.
  static const DestinyDestinyRecordState canEquipTitle = const DestinyDestinyRecordState._internal(64);
}

class DestinyDestinyRecordStateTypeTransformer extends TypeTransformer<DestinyDestinyRecordState> {

  @override
  dynamic encode(DestinyDestinyRecordState data) {
    return data.value;
  }

  @override
  DestinyDestinyRecordState decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyRecordState.none;
      case 1: return DestinyDestinyRecordState.recordRedeemed;
      case 2: return DestinyDestinyRecordState.rewardUnavailable;
      case 4: return DestinyDestinyRecordState.objectiveNotCompleted;
      case 8: return DestinyDestinyRecordState.obscured;
      case 16: return DestinyDestinyRecordState.invisible;
      case 32: return DestinyDestinyRecordState.entitlementUnowned;
      case 64: return DestinyDestinyRecordState.canEquipTitle;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

