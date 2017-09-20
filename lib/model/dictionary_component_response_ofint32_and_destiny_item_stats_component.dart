part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemStatsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemStatsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemStatsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemStatsComponent[data=$data, privacy=$privacy, ]';
  }
}

