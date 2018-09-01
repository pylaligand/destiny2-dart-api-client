part of destiny2_api.api;

@Entity()
class TrendingTrendingEntryDestinyRitual {
  
  @Property(name: 'image')
  String image = null;
  

  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'title')
  String title = null;
  

  @Property(name: 'subtitle')
  String subtitle = null;
  

  @Property(name: 'dateStart')
  DateTime dateStart = null;
  

  @Property(name: 'dateEnd')
  DateTime dateEnd = null;
  
/* A destiny event does not necessarily have a related Milestone, but if it does the details will be returned here. */
  @Property(name: 'milestoneDetails')
  DestinyMilestonesDestinyPublicMilestone milestoneDetails = null;
  
/* A destiny event will not necessarily have milestone \"custom content\", but if it does the details will be here. */
  @Property(name: 'eventContent')
  Object eventContent = null;
  
  TrendingTrendingEntryDestinyRitual();

  @override
  String toString()  {
    return 'TrendingTrendingEntryDestinyRitual[image=$image, icon=$icon, title=$title, subtitle=$subtitle, dateStart=$dateStart, dateEnd=$dateEnd, milestoneDetails=$milestoneDetails, eventContent=$eventContent, ]';
  }
}

