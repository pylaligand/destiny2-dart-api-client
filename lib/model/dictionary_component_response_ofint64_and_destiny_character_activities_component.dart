part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesCharactersDestinyCharacterActivitiesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent[data=$data, privacy=$privacy, ]';
  }
}

