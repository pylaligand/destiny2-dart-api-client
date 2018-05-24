part of destiny2_api.api;

@Entity()
class ApplicationsDeveloperRole {
  /// The underlying value of this enum member.
  final int value;

  const ApplicationsDeveloperRole._internal(this.value);

  static const ApplicationsDeveloperRole none = const ApplicationsDeveloperRole._internal(0);
  static const ApplicationsDeveloperRole owner = const ApplicationsDeveloperRole._internal(1);
  static const ApplicationsDeveloperRole teamMember = const ApplicationsDeveloperRole._internal(2);
}

class ApplicationsDeveloperRoleTypeTransformer extends TypeTransformer<ApplicationsDeveloperRole> {

  @override
  dynamic encode(ApplicationsDeveloperRole data) {
    return data.value;
  }

  @override
  ApplicationsDeveloperRole decode(dynamic data) {
    switch (data) {
      case 0: return ApplicationsDeveloperRole.none;
      case 1: return ApplicationsDeveloperRole.owner;
      case 2: return ApplicationsDeveloperRole.teamMember;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

