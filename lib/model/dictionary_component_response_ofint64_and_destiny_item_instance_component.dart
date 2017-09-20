part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemInstanceComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent[data=$data, privacy=$privacy, ]';
  }
}

