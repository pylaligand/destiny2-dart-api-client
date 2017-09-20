part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyKiosksComponent {
  
  @Property(name: 'data')
  DestinyComponentsKiosksDestinyKiosksComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyKiosksComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyKiosksComponent[data=$data, privacy=$privacy, ]';
  }
}

