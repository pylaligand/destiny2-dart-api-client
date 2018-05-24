part of destiny2_api.api;

@Entity()
class ApplicationsOAuthApplicationType {
  /// The underlying value of this enum member.
  final int value;

  const ApplicationsOAuthApplicationType._internal(this.value);

  static const ApplicationsOAuthApplicationType none = const ApplicationsOAuthApplicationType._internal(0);
  /// Indicates the application is server based and can keep its secrets from end users and other potential snoops.
  static const ApplicationsOAuthApplicationType confidential = const ApplicationsOAuthApplicationType._internal(1);
  /// Indicates the application runs in a public place, and it can't be trusted to keep a secret.
  static const ApplicationsOAuthApplicationType public = const ApplicationsOAuthApplicationType._internal(2);
}

class ApplicationsOAuthApplicationTypeTypeTransformer extends TypeTransformer<ApplicationsOAuthApplicationType> {

  @override
  dynamic encode(ApplicationsOAuthApplicationType data) {
    return data.value;
  }

  @override
  ApplicationsOAuthApplicationType decode(dynamic data) {
    switch (data) {
      case 0: return ApplicationsOAuthApplicationType.none;
      case 1: return ApplicationsOAuthApplicationType.confidential;
      case 2: return ApplicationsOAuthApplicationType.public;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

