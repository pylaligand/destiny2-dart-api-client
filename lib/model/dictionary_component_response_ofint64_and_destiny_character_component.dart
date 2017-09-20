part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCharacterComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesCharactersDestinyCharacterComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCharacterComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCharacterComponent[data=$data, privacy=$privacy, ]';
  }
}

