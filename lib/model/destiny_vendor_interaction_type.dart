part of destiny2_api.api;

@Entity()
class DestinyVendorInteractionType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyVendorInteractionType._internal(this.value);

  /// An enumeration of the known UI interactions for Vendors.
  static const DestinyVendorInteractionType unknown = const DestinyVendorInteractionType._internal(0);
  /// An interaction shown when you complete a quest and receive a reward.
  static const DestinyVendorInteractionType questComplete = const DestinyVendorInteractionType._internal(1);
  /// An interaction shown when you talk to a Vendor as an intermediary step of a quest.
  static const DestinyVendorInteractionType questContinue = const DestinyVendorInteractionType._internal(2);
  /// An interaction shown when you are previewing the vendor's reputation rewards.
  static const DestinyVendorInteractionType reputationPreview = const DestinyVendorInteractionType._internal(3);
  /// An interaction shown when you rank up with the vendor.
  static const DestinyVendorInteractionType rankUpReward = const DestinyVendorInteractionType._internal(4);
  /// An interaction shown when you have tokens to turn in for the vendor.
  static const DestinyVendorInteractionType tokenTurnIn = const DestinyVendorInteractionType._internal(5);
  /// An interaction shown when you're accepting a new quest.
  static const DestinyVendorInteractionType questAccept = const DestinyVendorInteractionType._internal(6);
  /// Honestly, this doesn't seem consistent to me. It is used to give you choices in the Cryptarch as well as some reward prompts by the Eververse vendor. I'll have to look into that further at some point.
  static const DestinyVendorInteractionType progressTab = const DestinyVendorInteractionType._internal(7);
  /// These seem even less consistent. I don't know what these are.
  static const DestinyVendorInteractionType end = const DestinyVendorInteractionType._internal(8);
  /// Also seem inconsistent. I also don't know what these are offhand.
  static const DestinyVendorInteractionType start = const DestinyVendorInteractionType._internal(9);
}

class DestinyVendorInteractionTypeTypeTransformer extends TypeTransformer<DestinyVendorInteractionType> {

  @override
  dynamic encode(DestinyVendorInteractionType data) {
    return data.value;
  }

  @override
  DestinyVendorInteractionType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyVendorInteractionType.unknown;
      case 1: return DestinyVendorInteractionType.questComplete;
      case 2: return DestinyVendorInteractionType.questContinue;
      case 3: return DestinyVendorInteractionType.reputationPreview;
      case 4: return DestinyVendorInteractionType.rankUpReward;
      case 5: return DestinyVendorInteractionType.tokenTurnIn;
      case 6: return DestinyVendorInteractionType.questAccept;
      case 7: return DestinyVendorInteractionType.progressTab;
      case 8: return DestinyVendorInteractionType.end;
      case 9: return DestinyVendorInteractionType.start;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

