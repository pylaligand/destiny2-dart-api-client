part of destiny2_api.api;

@Entity()
class PartnershipsPartnershipType {
  /// The underlying value of this enum member.
  final int value;

  const PartnershipsPartnershipType._internal(this.value);

  /// Representing external partners to which BNet users can link accounts, but that are not Account System credentials: partnerships that BNet uses exclusively for data.
  static const PartnershipsPartnershipType none = const PartnershipsPartnershipType._internal(0);
  /// Representing external partners to which BNet users can link accounts, but that are not Account System credentials: partnerships that BNet uses exclusively for data.
  static const PartnershipsPartnershipType twitch = const PartnershipsPartnershipType._internal(1);
}

class PartnershipsPartnershipTypeTypeTransformer extends TypeTransformer<PartnershipsPartnershipType> {

  @override
  dynamic encode(PartnershipsPartnershipType data) {
    return data.value;
  }

  @override
  PartnershipsPartnershipType decode(dynamic data) {
    switch (data) {
      case 0: return PartnershipsPartnershipType.none;
      case 1: return PartnershipsPartnershipType.twitch;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

