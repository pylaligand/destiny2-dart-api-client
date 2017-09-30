part of destiny2_api.api;

@Entity()
class DestinyDestinyObjectiveGrantStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyObjectiveGrantStyle._internal(this.value);

  /// Some Objectives provide perks, generally as part of providing some kind of interesting modifier for a Challenge or Quest. This indicates when the Perk is granted.
  static const DestinyDestinyObjectiveGrantStyle whenIncomplete = const DestinyDestinyObjectiveGrantStyle._internal(0);
  /// Some Objectives provide perks, generally as part of providing some kind of interesting modifier for a Challenge or Quest. This indicates when the Perk is granted.
  static const DestinyDestinyObjectiveGrantStyle whenComplete = const DestinyDestinyObjectiveGrantStyle._internal(1);
  /// Some Objectives provide perks, generally as part of providing some kind of interesting modifier for a Challenge or Quest. This indicates when the Perk is granted.
  static const DestinyDestinyObjectiveGrantStyle always = const DestinyDestinyObjectiveGrantStyle._internal(2);
}

class DestinyDestinyObjectiveGrantStyleTypeTransformer extends TypeTransformer<DestinyDestinyObjectiveGrantStyle> {

  @override
  dynamic encode(DestinyDestinyObjectiveGrantStyle data) {
    return data.value;
  }

  @override
  DestinyDestinyObjectiveGrantStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyObjectiveGrantStyle.whenIncomplete;
      case 1: return DestinyDestinyObjectiveGrantStyle.whenComplete;
      case 2: return DestinyDestinyObjectiveGrantStyle.always;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

