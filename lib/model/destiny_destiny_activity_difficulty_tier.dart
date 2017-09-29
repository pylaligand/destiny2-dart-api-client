part of destiny2_api.api;

@Entity()
class DestinyDestinyActivityDifficultyTier {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyActivityDifficultyTier._internal(this.value);

  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier trivial = const DestinyDestinyActivityDifficultyTier._internal(0);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier easy = const DestinyDestinyActivityDifficultyTier._internal(1);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier normal = const DestinyDestinyActivityDifficultyTier._internal(2);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier challenging = const DestinyDestinyActivityDifficultyTier._internal(3);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier hard = const DestinyDestinyActivityDifficultyTier._internal(4);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier brave = const DestinyDestinyActivityDifficultyTier._internal(5);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier almostImpossible = const DestinyDestinyActivityDifficultyTier._internal(6);
  /// An enumeration representing the potential difficulty levels of an activity. Their names are... more qualitative than quantitative.
  static const DestinyDestinyActivityDifficultyTier impossible = const DestinyDestinyActivityDifficultyTier._internal(7);
}

class DestinyDestinyActivityDifficultyTierTypeTransformer extends TypeTransformer<DestinyDestinyActivityDifficultyTier> {

  @override
  dynamic encode(DestinyDestinyActivityDifficultyTier data) {
    return data.value;
  }

  @override
  DestinyDestinyActivityDifficultyTier decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyActivityDifficultyTier.trivial;
      case 1: return DestinyDestinyActivityDifficultyTier.easy;
      case 2: return DestinyDestinyActivityDifficultyTier.normal;
      case 3: return DestinyDestinyActivityDifficultyTier.challenging;
      case 4: return DestinyDestinyActivityDifficultyTier.hard;
      case 5: return DestinyDestinyActivityDifficultyTier.brave;
      case 6: return DestinyDestinyActivityDifficultyTier.almostImpossible;
      case 7: return DestinyDestinyActivityDifficultyTier.impossible;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

