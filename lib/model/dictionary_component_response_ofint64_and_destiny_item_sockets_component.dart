part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemSocketsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent[data=$data, privacy=$privacy, ]';
  }
}

