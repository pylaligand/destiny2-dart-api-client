part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesCharactersDestinyCharacterProgressionComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent[data=$data, privacy=$privacy, ]';
  }
}

