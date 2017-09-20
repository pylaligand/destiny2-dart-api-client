part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyItemStatsComponent {
  
  @Property(name: 'data')
  DestinyEntitiesItemsDestinyItemStatsComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyItemStatsComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyItemStatsComponent[data=$data, privacy=$privacy, ]';
  }
}

