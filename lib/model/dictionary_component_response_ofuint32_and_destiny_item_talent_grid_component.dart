part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemTalentGridComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent[data=$data, privacy=$privacy, ]';
  }
}

