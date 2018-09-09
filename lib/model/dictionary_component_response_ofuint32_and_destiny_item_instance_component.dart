part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemInstanceComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent[data=$data, privacy=$privacy, ]';
  }
}

