part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemPerksComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemPerksComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemPerksComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemPerksComponent[data=$data, privacy=$privacy, ]';
  }
}

