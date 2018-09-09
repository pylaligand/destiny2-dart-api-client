part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCollectiblesComponent {
  
  @Property(name: 'data')
  DestinyComponentsCollectiblesDestinyCollectiblesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCollectiblesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCollectiblesComponent[data=$data, privacy=$privacy, ]';
  }
}

