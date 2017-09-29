part of destiny2_api.api;

@Entity()
class DestinyBucketScope {
  /// The underlying value of this enum member.
  final int value;

  const DestinyBucketScope._internal(this.value);

  static const DestinyBucketScope character = const DestinyBucketScope._internal(0);
  static const DestinyBucketScope account = const DestinyBucketScope._internal(1);
}

class DestinyBucketScopeTypeTransformer extends TypeTransformer<DestinyBucketScope> {

  @override
  dynamic encode(DestinyBucketScope data) {
    return data.value;
  }

  @override
  DestinyBucketScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyBucketScope.character;
      case 1: return DestinyBucketScope.account;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

