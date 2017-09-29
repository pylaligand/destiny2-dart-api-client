part of destiny2_api.api;

@Entity()
class ComponentsComponentPrivacySetting {
  /// The underlying value of this enum member.
  final int value;

  const ComponentsComponentPrivacySetting._internal(this.value);

  /// A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons.
  static const ComponentsComponentPrivacySetting none = const ComponentsComponentPrivacySetting._internal(0);
  /// A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons.
  static const ComponentsComponentPrivacySetting public = const ComponentsComponentPrivacySetting._internal(1);
  /// A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons.
  static const ComponentsComponentPrivacySetting private = const ComponentsComponentPrivacySetting._internal(2);
}

class ComponentsComponentPrivacySettingTypeTransformer extends TypeTransformer<ComponentsComponentPrivacySetting> {

  @override
  dynamic encode(ComponentsComponentPrivacySetting data) {
    return data.value;
  }

  @override
  ComponentsComponentPrivacySetting decode(dynamic data) {
    switch (data) {
      case 0: return ComponentsComponentPrivacySetting.none;
      case 1: return ComponentsComponentPrivacySetting.public;
      case 2: return ComponentsComponentPrivacySetting.private;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

