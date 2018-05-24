part of destiny2_api.api;

@Entity()
class ApplicationsApplicationStatus {
  /// The underlying value of this enum member.
  final int value;

  const ApplicationsApplicationStatus._internal(this.value);

  /// No value assigned
  static const ApplicationsApplicationStatus none = const ApplicationsApplicationStatus._internal(0);
  /// Application exists and works but will not appear in any public catalog. New applications start in this state, test applications will remain in this state.
  static const ApplicationsApplicationStatus private = const ApplicationsApplicationStatus._internal(1);
  /// Active applications that can appear in an catalog.
  static const ApplicationsApplicationStatus public = const ApplicationsApplicationStatus._internal(2);
  /// Application disabled by the owner. All authorizations will be treated as terminated while in this state. Owner can move back to private or public state.
  static const ApplicationsApplicationStatus disabled = const ApplicationsApplicationStatus._internal(3);
  /// Application has been blocked by Bungie. It cannot be transitioned out of this state by the owner. Authorizations are terminated when an application is in this state.
  static const ApplicationsApplicationStatus blocked = const ApplicationsApplicationStatus._internal(4);
}

class ApplicationsApplicationStatusTypeTransformer extends TypeTransformer<ApplicationsApplicationStatus> {

  @override
  dynamic encode(ApplicationsApplicationStatus data) {
    return data.value;
  }

  @override
  ApplicationsApplicationStatus decode(dynamic data) {
    switch (data) {
      case 0: return ApplicationsApplicationStatus.none;
      case 1: return ApplicationsApplicationStatus.private;
      case 2: return ApplicationsApplicationStatus.public;
      case 3: return ApplicationsApplicationStatus.disabled;
      case 4: return ApplicationsApplicationStatus.blocked;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

