part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesItemsDestinyItemTalentGridComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent[data=$data, privacy=$privacy, ]';
  }
}

