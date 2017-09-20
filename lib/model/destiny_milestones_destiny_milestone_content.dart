part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneContent {
  /* The \"About this Milestone\" text from the Firehose. */
  @Property(name: 'about')
  String about = null;
  
/* The Current Status of the Milestone, as driven by the Firehose. */
  @Property(name: 'status')
  String status = null;
  
/* A list of tips, provided by the Firehose. */
  @Property(name: 'tips')
  List<String> tips = [];
  
/* If DPS has defined items related to this Milestone, they can categorize those items in the Firehose. That data will then be returned as item categories here. */
  @Property(name: 'itemCategories')
  List<DestinyMilestonesDestinyMilestoneContentItemCategory> itemCategories = [];
  
  DestinyMilestonesDestinyMilestoneContent();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneContent[about=$about, status=$status, tips=$tips, itemCategories=$itemCategories, ]';
  }
}

