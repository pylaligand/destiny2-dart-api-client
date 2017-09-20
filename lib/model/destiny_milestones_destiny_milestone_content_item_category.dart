part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneContentItemCategory {
  
  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'itemHashes')
  List<int> itemHashes = [];
  
  DestinyMilestonesDestinyMilestoneContentItemCategory();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneContentItemCategory[title=$title, itemHashes=$itemHashes, ]';
  }
}

