part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaResponseReason {
  /// The underlying value of this enum member.
  final int value;

  const DestinyAdvancedAwaResponseReason._internal(this.value);

  static const DestinyAdvancedAwaResponseReason none = const DestinyAdvancedAwaResponseReason._internal(0);
  /// User provided an answer
  static const DestinyAdvancedAwaResponseReason answered = const DestinyAdvancedAwaResponseReason._internal(1);
  /// The HTTP request timed out, a new request may be made and an answer may still be provided.
  static const DestinyAdvancedAwaResponseReason timedOut = const DestinyAdvancedAwaResponseReason._internal(2);
  /// This request was replaced by another request.
  static const DestinyAdvancedAwaResponseReason replaced = const DestinyAdvancedAwaResponseReason._internal(3);
}

class DestinyAdvancedAwaResponseReasonTypeTransformer extends TypeTransformer<DestinyAdvancedAwaResponseReason> {

  @override
  dynamic encode(DestinyAdvancedAwaResponseReason data) {
    return data.value;
  }

  @override
  DestinyAdvancedAwaResponseReason decode(dynamic data) {
    switch (data) {
      case 0: return DestinyAdvancedAwaResponseReason.none;
      case 1: return DestinyAdvancedAwaResponseReason.answered;
      case 2: return DestinyAdvancedAwaResponseReason.timedOut;
      case 3: return DestinyAdvancedAwaResponseReason.replaced;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

