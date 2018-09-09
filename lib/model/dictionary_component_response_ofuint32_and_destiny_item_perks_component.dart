part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemPerksComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent[data=$data, privacy=$privacy, ]';
  }
}

