part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCharacterProgressionComponent {
  
  @Property(name: 'data')
  DestinyEntitiesCharactersDestinyCharacterProgressionComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCharacterProgressionComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCharacterProgressionComponent[data=$data, privacy=$privacy, ]';
  }
}

