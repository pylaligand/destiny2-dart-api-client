part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemInstanceComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent[data=$data, privacy=$privacy, ]';
  }
}

