part of destiny2_api.api;

@Entity()
class DestinyDestinyRace {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyRace._internal(this.value);

  static const DestinyDestinyRace human = const DestinyDestinyRace._internal(0);
  static const DestinyDestinyRace awoken = const DestinyDestinyRace._internal(1);
  static const DestinyDestinyRace exo = const DestinyDestinyRace._internal(2);
  static const DestinyDestinyRace unknown = const DestinyDestinyRace._internal(3);
}

class DestinyDestinyRaceTypeTransformer extends TypeTransformer<DestinyDestinyRace> {

  @override
  dynamic encode(DestinyDestinyRace data) {
    return data.value;
  }

  @override
  DestinyDestinyRace decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyRace.human;
      case 1: return DestinyDestinyRace.awoken;
      case 2: return DestinyDestinyRace.exo;
      case 3: return DestinyDestinyRace.unknown;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

