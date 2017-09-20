part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCharacterComponent {
  
  @Property(name: 'data')
  DestinyEntitiesCharactersDestinyCharacterComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCharacterComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCharacterComponent[data=$data, privacy=$privacy, ]';
  }
}

