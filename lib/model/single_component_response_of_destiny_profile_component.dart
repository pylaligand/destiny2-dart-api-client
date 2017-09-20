part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyProfileComponent {
  
  @Property(name: 'data')
  DestinyEntitiesProfilesDestinyProfileComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyProfileComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyProfileComponent[data=$data, privacy=$privacy, ]';
  }
}

