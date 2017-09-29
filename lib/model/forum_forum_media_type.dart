part of destiny2_api.api;

@Entity()
class ForumForumMediaType {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumMediaType._internal(this.value);

  static const ForumForumMediaType none = const ForumForumMediaType._internal(0);
  static const ForumForumMediaType image = const ForumForumMediaType._internal(1);
  static const ForumForumMediaType video = const ForumForumMediaType._internal(2);
  static const ForumForumMediaType youtube = const ForumForumMediaType._internal(3);
}

class ForumForumMediaTypeTypeTransformer extends TypeTransformer<ForumForumMediaType> {

  @override
  dynamic encode(ForumForumMediaType data) {
    return data.value;
  }

  @override
  ForumForumMediaType decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumMediaType.none;
      case 1: return ForumForumMediaType.image;
      case 2: return ForumForumMediaType.video;
      case 3: return ForumForumMediaType.youtube;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

