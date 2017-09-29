part of destiny2_api.api;

@Entity()
class ForumForumPostSortEnum {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumPostSortEnum._internal(this.value);

  static const ForumForumPostSortEnum default_ = const ForumForumPostSortEnum._internal(0);
  static const ForumForumPostSortEnum oldestFirst = const ForumForumPostSortEnum._internal(1);
}

class ForumForumPostSortEnumTypeTransformer extends TypeTransformer<ForumForumPostSortEnum> {

  @override
  dynamic encode(ForumForumPostSortEnum data) {
    return data.value;
  }

  @override
  ForumForumPostSortEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumPostSortEnum.default_;
      case 1: return ForumForumPostSortEnum.oldestFirst;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

