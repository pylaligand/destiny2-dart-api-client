part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesCharactersDestinyCharacterRenderComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent[data=$data, privacy=$privacy, ]';
  }
}

