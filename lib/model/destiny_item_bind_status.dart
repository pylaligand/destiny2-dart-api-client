part of destiny2_api.api;

@Entity()
class DestinyItemBindStatus {
  /// The underlying value of this enum member.
  final int value;

  const DestinyItemBindStatus._internal(this.value);

  static const DestinyItemBindStatus notBound = const DestinyItemBindStatus._internal(0);
  static const DestinyItemBindStatus boundToCharacter = const DestinyItemBindStatus._internal(1);
  static const DestinyItemBindStatus boundToAccount = const DestinyItemBindStatus._internal(2);
  static const DestinyItemBindStatus boundToGuild = const DestinyItemBindStatus._internal(3);
}

class DestinyItemBindStatusTypeTransformer extends TypeTransformer<DestinyItemBindStatus> {

  @override
  dynamic encode(DestinyItemBindStatus data) {
    return data.value;
  }

  @override
  DestinyItemBindStatus decode(dynamic data) {
    switch (data) {
      case 0: return DestinyItemBindStatus.notBound;
      case 1: return DestinyItemBindStatus.boundToCharacter;
      case 2: return DestinyItemBindStatus.boundToAccount;
      case 3: return DestinyItemBindStatus.boundToGuild;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

