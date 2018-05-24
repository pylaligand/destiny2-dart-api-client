part of destiny2_api.api;

@Entity()
class DestinyItemPerkVisibility {
  /// The underlying value of this enum member.
  final int value;

  const DestinyItemPerkVisibility._internal(this.value);

  /// Indicates how a perk should be shown, or if it should be, in the game UI. Maybe useful for those of you trying to filter out internal-use-only perks (or for those of you trying to figure out what they do!)
  static const DestinyItemPerkVisibility visible = const DestinyItemPerkVisibility._internal(0);
  /// Indicates how a perk should be shown, or if it should be, in the game UI. Maybe useful for those of you trying to filter out internal-use-only perks (or for those of you trying to figure out what they do!)
  static const DestinyItemPerkVisibility disabled = const DestinyItemPerkVisibility._internal(1);
  /// Indicates how a perk should be shown, or if it should be, in the game UI. Maybe useful for those of you trying to filter out internal-use-only perks (or for those of you trying to figure out what they do!)
  static const DestinyItemPerkVisibility hidden = const DestinyItemPerkVisibility._internal(2);
}

class DestinyItemPerkVisibilityTypeTransformer extends TypeTransformer<DestinyItemPerkVisibility> {

  @override
  dynamic encode(DestinyItemPerkVisibility data) {
    return data.value;
  }

  @override
  DestinyItemPerkVisibility decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemPerkVisibility.visible;
      case 1: return DestinyItemPerkVisibility.disabled;
      case 2: return DestinyItemPerkVisibility.hidden;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

