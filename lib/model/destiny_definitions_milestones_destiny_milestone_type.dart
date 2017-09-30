part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneType {
  /// The underlying value of this enum member.
  final int value;

  const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(this.value);

  /// The type of milestone. Milestones can be Tutorials, one-time/triggered/non-repeating but not necessarily tutorials, or Repeating Milestones.
  static const DestinyDefinitionsMilestonesDestinyMilestoneType unknown = const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(0);
  /// One-time milestones that are specifically oriented toward teaching players about new mechanics and gameplay modes.
  static const DestinyDefinitionsMilestonesDestinyMilestoneType tutorial = const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(1);
  /// Milestones that, once completed a single time, can never be repeated.
  static const DestinyDefinitionsMilestonesDestinyMilestoneType oneTime = const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(2);
  /// Milestones that repeat/reset on a weekly basis. They need not all reset on the same day or time, but do need to reset weekly to qualify for this type.
  static const DestinyDefinitionsMilestonesDestinyMilestoneType weekly = const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(3);
  /// Milestones that repeat or reset on a daily basis.
  static const DestinyDefinitionsMilestonesDestinyMilestoneType daily = const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(4);
  /// Special indicates that the event is not on a daily/weekly cadence, but does occur more than once. For instance, Iron Banner in Destiny 1 or the Dawning were examples of what could be termed "Special" events.
  static const DestinyDefinitionsMilestonesDestinyMilestoneType special = const DestinyDefinitionsMilestonesDestinyMilestoneType._internal(5);
}

class DestinyDefinitionsMilestonesDestinyMilestoneTypeTypeTransformer extends TypeTransformer<DestinyDefinitionsMilestonesDestinyMilestoneType> {

  @override
  dynamic encode(DestinyDefinitionsMilestonesDestinyMilestoneType data) {
    return data.value;
  }

  @override
  DestinyDefinitionsMilestonesDestinyMilestoneType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsMilestonesDestinyMilestoneType.unknown;
      case 1: return DestinyDefinitionsMilestonesDestinyMilestoneType.tutorial;
      case 2: return DestinyDefinitionsMilestonesDestinyMilestoneType.oneTime;
      case 3: return DestinyDefinitionsMilestonesDestinyMilestoneType.weekly;
      case 4: return DestinyDefinitionsMilestonesDestinyMilestoneType.daily;
      case 5: return DestinyDefinitionsMilestonesDestinyMilestoneType.special;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

