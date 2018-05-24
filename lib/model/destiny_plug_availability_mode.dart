part of destiny2_api.api;

@Entity()
class DestinyPlugAvailabilityMode {
  /// The underlying value of this enum member.
  final int value;

  const DestinyPlugAvailabilityMode._internal(this.value);

  /// This enum determines whether the plug is available to be inserted.  - Normal means that all existing rules for plug insertion apply.  - UnavailableIfSocketContainsMatchingPlugCategory means that the plug is only available if the socket does NOT match the plug category.  - AvailableIfSocketContainsMatchingPlugCategory means that the plug is only available if the socket DOES match the plug category.  For category matching, use the plug's \"plugCategoryIdentifier\" property, comparing it to
  static const DestinyPlugAvailabilityMode normal = const DestinyPlugAvailabilityMode._internal(0);
  /// This enum determines whether the plug is available to be inserted.  - Normal means that all existing rules for plug insertion apply.  - UnavailableIfSocketContainsMatchingPlugCategory means that the plug is only available if the socket does NOT match the plug category.  - AvailableIfSocketContainsMatchingPlugCategory means that the plug is only available if the socket DOES match the plug category.  For category matching, use the plug's \"plugCategoryIdentifier\" property, comparing it to
  static const DestinyPlugAvailabilityMode unavailableIfSocketContainsMatchingPlugCategory = const DestinyPlugAvailabilityMode._internal(1);
  /// This enum determines whether the plug is available to be inserted.  - Normal means that all existing rules for plug insertion apply.  - UnavailableIfSocketContainsMatchingPlugCategory means that the plug is only available if the socket does NOT match the plug category.  - AvailableIfSocketContainsMatchingPlugCategory means that the plug is only available if the socket DOES match the plug category.  For category matching, use the plug's \"plugCategoryIdentifier\" property, comparing it to
  static const DestinyPlugAvailabilityMode availableIfSocketContainsMatchingPlugCategory = const DestinyPlugAvailabilityMode._internal(2);
}

class DestinyPlugAvailabilityModeTypeTransformer extends TypeTransformer<DestinyPlugAvailabilityMode> {

  @override
  dynamic encode(DestinyPlugAvailabilityMode data) {
    return data.value;
  }

  @override
  DestinyPlugAvailabilityMode decode(dynamic data) {
    switch (data) {
      case 0: return DestinyPlugAvailabilityMode.normal;
      case 1: return DestinyPlugAvailabilityMode.unavailableIfSocketContainsMatchingPlugCategory;
      case 2: return DestinyPlugAvailabilityMode.availableIfSocketContainsMatchingPlugCategory;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

