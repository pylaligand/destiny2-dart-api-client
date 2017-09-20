part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyInventoryComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesInventoryDestinyInventoryComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyInventoryComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyInventoryComponent[data=$data, privacy=$privacy, ]';
  }
}

