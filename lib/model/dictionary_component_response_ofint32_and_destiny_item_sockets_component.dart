part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemSocketsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent[data=$data, privacy=$privacy, ]';
  }
}

