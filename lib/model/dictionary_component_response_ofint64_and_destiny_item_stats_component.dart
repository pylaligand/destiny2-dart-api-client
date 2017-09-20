part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemStatsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemStatsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemStatsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemStatsComponent[data=$data, privacy=$privacy, ]';
  }
}

