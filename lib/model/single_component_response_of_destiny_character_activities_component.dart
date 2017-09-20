part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCharacterActivitiesComponent {
  
  @Property(name: 'data')
  DestinyEntitiesCharactersDestinyCharacterActivitiesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCharacterActivitiesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCharacterActivitiesComponent[data=$data, privacy=$privacy, ]';
  }
}

