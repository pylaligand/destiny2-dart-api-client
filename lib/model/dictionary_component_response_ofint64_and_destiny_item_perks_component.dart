part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemPerksComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemPerksComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemPerksComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemPerksComponent[data=$data, privacy=$privacy, ]';
  }
}

