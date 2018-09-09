part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemStatsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent[data=$data, privacy=$privacy, ]';
  }
}

