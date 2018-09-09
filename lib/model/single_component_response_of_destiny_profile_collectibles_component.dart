part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyProfileCollectiblesComponent {
  
  @Property(name: 'data')
  DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyProfileCollectiblesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyProfileCollectiblesComponent[data=$data, privacy=$privacy, ]';
  }
}

