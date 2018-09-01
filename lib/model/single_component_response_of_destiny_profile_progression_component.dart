part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyProfileProgressionComponent {
  
  @Property(name: 'data')
  DestinyComponentsProfilesDestinyProfileProgressionComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyProfileProgressionComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyProfileProgressionComponent[data=$data, privacy=$privacy, ]';
  }
}

