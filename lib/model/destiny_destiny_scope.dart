part of destiny2_api.api;

@Entity()
class DestinyDestinyScope {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyScope._internal(this.value);

  /// There's a lot of places where we need to know scope on more than just a profile or character level. For everything else, there's this more generic sense of scope.
  static const DestinyDestinyScope profile = const DestinyDestinyScope._internal(0);
  /// There's a lot of places where we need to know scope on more than just a profile or character level. For everything else, there's this more generic sense of scope.
  static const DestinyDestinyScope character = const DestinyDestinyScope._internal(1);
}

class DestinyDestinyScopeTypeTransformer extends TypeTransformer<DestinyDestinyScope> {

  @override
  dynamic encode(DestinyDestinyScope data) {
    return data.value;
  }

  @override
  DestinyDestinyScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyScope.profile;
      case 1: return DestinyDestinyScope.character;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

