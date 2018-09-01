part of destiny2_api.api;

@Entity()
class ContentModelsContentPropertyDataTypeEnum {
  /// The underlying value of this enum member.
  final int value;

  const ContentModelsContentPropertyDataTypeEnum._internal(this.value);

  static const ContentModelsContentPropertyDataTypeEnum none = const ContentModelsContentPropertyDataTypeEnum._internal(0);
  static const ContentModelsContentPropertyDataTypeEnum plaintext = const ContentModelsContentPropertyDataTypeEnum._internal(1);
  static const ContentModelsContentPropertyDataTypeEnum html = const ContentModelsContentPropertyDataTypeEnum._internal(2);
  static const ContentModelsContentPropertyDataTypeEnum dropdown = const ContentModelsContentPropertyDataTypeEnum._internal(3);
  static const ContentModelsContentPropertyDataTypeEnum list = const ContentModelsContentPropertyDataTypeEnum._internal(4);
  static const ContentModelsContentPropertyDataTypeEnum json = const ContentModelsContentPropertyDataTypeEnum._internal(5);
  static const ContentModelsContentPropertyDataTypeEnum content = const ContentModelsContentPropertyDataTypeEnum._internal(6);
  static const ContentModelsContentPropertyDataTypeEnum representation = const ContentModelsContentPropertyDataTypeEnum._internal(7);
  static const ContentModelsContentPropertyDataTypeEnum set_ = const ContentModelsContentPropertyDataTypeEnum._internal(8);
  static const ContentModelsContentPropertyDataTypeEnum file = const ContentModelsContentPropertyDataTypeEnum._internal(9);
  static const ContentModelsContentPropertyDataTypeEnum folderSet = const ContentModelsContentPropertyDataTypeEnum._internal(10);
  static const ContentModelsContentPropertyDataTypeEnum date = const ContentModelsContentPropertyDataTypeEnum._internal(11);
  static const ContentModelsContentPropertyDataTypeEnum multilinePlaintext = const ContentModelsContentPropertyDataTypeEnum._internal(12);
  static const ContentModelsContentPropertyDataTypeEnum destinyContent = const ContentModelsContentPropertyDataTypeEnum._internal(13);
  static const ContentModelsContentPropertyDataTypeEnum color = const ContentModelsContentPropertyDataTypeEnum._internal(14);
}

class ContentModelsContentPropertyDataTypeEnumTypeTransformer extends TypeTransformer<ContentModelsContentPropertyDataTypeEnum> {

  @override
  dynamic encode(ContentModelsContentPropertyDataTypeEnum data) {
    return data.value;
  }

  @override
  ContentModelsContentPropertyDataTypeEnum decode(dynamic data) {
    switch (data) {
      case 0: return ContentModelsContentPropertyDataTypeEnum.none;
      case 1: return ContentModelsContentPropertyDataTypeEnum.plaintext;
      case 2: return ContentModelsContentPropertyDataTypeEnum.html;
      case 3: return ContentModelsContentPropertyDataTypeEnum.dropdown;
      case 4: return ContentModelsContentPropertyDataTypeEnum.list;
      case 5: return ContentModelsContentPropertyDataTypeEnum.json;
      case 6: return ContentModelsContentPropertyDataTypeEnum.content;
      case 7: return ContentModelsContentPropertyDataTypeEnum.representation;
      case 8: return ContentModelsContentPropertyDataTypeEnum.set_;
      case 9: return ContentModelsContentPropertyDataTypeEnum.file;
      case 10: return ContentModelsContentPropertyDataTypeEnum.folderSet;
      case 11: return ContentModelsContentPropertyDataTypeEnum.date;
      case 12: return ContentModelsContentPropertyDataTypeEnum.multilinePlaintext;
      case 13: return ContentModelsContentPropertyDataTypeEnum.destinyContent;
      case 14: return ContentModelsContentPropertyDataTypeEnum.color;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

