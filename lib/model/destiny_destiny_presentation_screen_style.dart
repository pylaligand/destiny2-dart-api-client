part of destiny2_api.api;

@Entity()
class DestinyDestinyPresentationScreenStyle {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyPresentationScreenStyle._internal(this.value);

  /// Use the "default" view for the presentation nodes.
  static const DestinyDestinyPresentationScreenStyle default_ = const DestinyDestinyPresentationScreenStyle._internal(0);
  /// Show sub-items as "category sets". In-game, you'd see these as a vertical list of child presentation nodes - armor sets for example - and the icons of items within those sets displayed horizontally.
  static const DestinyDestinyPresentationScreenStyle categorySets = const DestinyDestinyPresentationScreenStyle._internal(1);
  /// Show sub-items as Badges. (I know, I know. We don't need no stinkin' badges har har har)
  static const DestinyDestinyPresentationScreenStyle badge = const DestinyDestinyPresentationScreenStyle._internal(2);
}

class DestinyDestinyPresentationScreenStyleTypeTransformer extends TypeTransformer<DestinyDestinyPresentationScreenStyle> {

  @override
  dynamic encode(DestinyDestinyPresentationScreenStyle data) {
    return data.value;
  }

  @override
  DestinyDestinyPresentationScreenStyle decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyPresentationScreenStyle.default_;
      case 1: return DestinyDestinyPresentationScreenStyle.categorySets;
      case 2: return DestinyDestinyPresentationScreenStyle.badge;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

