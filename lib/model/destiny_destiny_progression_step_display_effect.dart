part of destiny2_api.api;

@Entity()
class DestinyDestinyProgressionStepDisplayEffect {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyProgressionStepDisplayEffect._internal(this.value);

  /// If progression is earned, this determines whether the progression shows visual effects on the character or its item - or neither.
  static const DestinyDestinyProgressionStepDisplayEffect none = const DestinyDestinyProgressionStepDisplayEffect._internal(0);
  /// If progression is earned, this determines whether the progression shows visual effects on the character or its item - or neither.
  static const DestinyDestinyProgressionStepDisplayEffect character = const DestinyDestinyProgressionStepDisplayEffect._internal(1);
  /// If progression is earned, this determines whether the progression shows visual effects on the character or its item - or neither.
  static const DestinyDestinyProgressionStepDisplayEffect item = const DestinyDestinyProgressionStepDisplayEffect._internal(2);
}

class DestinyDestinyProgressionStepDisplayEffectTypeTransformer extends TypeTransformer<DestinyDestinyProgressionStepDisplayEffect> {

  @override
  dynamic encode(DestinyDestinyProgressionStepDisplayEffect data) {
    return data.value;
  }

  @override
  DestinyDestinyProgressionStepDisplayEffect decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyProgressionStepDisplayEffect.none;
      case 1: return DestinyDestinyProgressionStepDisplayEffect.character;
      case 2: return DestinyDestinyProgressionStepDisplayEffect.item;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

