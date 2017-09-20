part of destiny2_api.api;

@Entity()
enum ComponentsComponentPrivacySetting {
  _0,
  _1,
  _2
  
}

class ComponentsComponentPrivacySettingTypeTransformer extends TypeTransformer<ComponentsComponentPrivacySetting> {

  @override
  dynamic encode(ComponentsComponentPrivacySetting data) {
    switch(data) {
      case ComponentsComponentPrivacySetting._0: return 0;
      case ComponentsComponentPrivacySetting._1: return 1;
      case ComponentsComponentPrivacySetting._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ComponentsComponentPrivacySetting decode(dynamic data) {
    switch (data) {
      case 0: return ComponentsComponentPrivacySetting._0;
      case 1: return ComponentsComponentPrivacySetting._1;
      case 2: return ComponentsComponentPrivacySetting._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

