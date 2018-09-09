part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemSocketsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent[data=$data, privacy=$privacy, ]';
  }
}

