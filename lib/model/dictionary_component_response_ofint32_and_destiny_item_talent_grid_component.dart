part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemTalentGridComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent[data=$data, privacy=$privacy, ]';
  }
}

