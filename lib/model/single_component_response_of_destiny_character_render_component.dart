part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCharacterRenderComponent {
  
  @Property(name: 'data')
  DestinyEntitiesCharactersDestinyCharacterRenderComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCharacterRenderComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCharacterRenderComponent[data=$data, privacy=$privacy, ]';
  }
}

