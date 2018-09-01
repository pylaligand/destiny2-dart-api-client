part of destiny2_api.api;

@Entity()
class DestinyDestinyPresentationDisplayStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyPresentationDisplayStyle._internal(this.value);

  /// Display the item as a category, through which sub-items are filtered.
  static const DestinyDestinyPresentationDisplayStyle category = const DestinyDestinyPresentationDisplayStyle._internal(0);
  /// A hint for how the presentation node should be displayed when shown in a list. How you use this is your UI is up to you.
  static const DestinyDestinyPresentationDisplayStyle badge = const DestinyDestinyPresentationDisplayStyle._internal(1);
  /// A hint for how the presentation node should be displayed when shown in a list. How you use this is your UI is up to you.
  static const DestinyDestinyPresentationDisplayStyle medals = const DestinyDestinyPresentationDisplayStyle._internal(2);
  /// A hint for how the presentation node should be displayed when shown in a list. How you use this is your UI is up to you.
  static const DestinyDestinyPresentationDisplayStyle collectible = const DestinyDestinyPresentationDisplayStyle._internal(3);
  /// A hint for how the presentation node should be displayed when shown in a list. How you use this is your UI is up to you.
  static const DestinyDestinyPresentationDisplayStyle record = const DestinyDestinyPresentationDisplayStyle._internal(4);
}

class DestinyDestinyPresentationDisplayStyleTypeTransformer extends TypeTransformer<DestinyDestinyPresentationDisplayStyle> {

  @override
  dynamic encode(DestinyDestinyPresentationDisplayStyle data) {
    return data.value;
  }

  @override
  DestinyDestinyPresentationDisplayStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyPresentationDisplayStyle.category;
      case 1: return DestinyDestinyPresentationDisplayStyle.badge;
      case 2: return DestinyDestinyPresentationDisplayStyle.medals;
      case 3: return DestinyDestinyPresentationDisplayStyle.collectible;
      case 4: return DestinyDestinyPresentationDisplayStyle.record;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

