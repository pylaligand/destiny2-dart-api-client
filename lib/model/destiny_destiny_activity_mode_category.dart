part of destiny2_api.api;

@Entity()
class DestinyDestinyActivityModeCategory {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDestinyActivityModeCategory._internal(this.value);

  /// Activities that are neither PVP nor PVE, such as social activities.
  static const DestinyDestinyActivityModeCategory none = const DestinyDestinyActivityModeCategory._internal(0);
  /// PvE activities, where you shoot aliens in the face.
  static const DestinyDestinyActivityModeCategory pvE = const DestinyDestinyActivityModeCategory._internal(1);
  /// PvP activities, where you teabag other humans in the face.
  static const DestinyDestinyActivityModeCategory pvP = const DestinyDestinyActivityModeCategory._internal(2);
}

class DestinyDestinyActivityModeCategoryTypeTransformer extends TypeTransformer<DestinyDestinyActivityModeCategory> {

  @override
  dynamic encode(DestinyDestinyActivityModeCategory data) {
    return data.value;
  }

  @override
  DestinyDestinyActivityModeCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyActivityModeCategory.none;
      case 1: return DestinyDestinyActivityModeCategory.pvE;
      case 2: return DestinyDestinyActivityModeCategory.pvP;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

