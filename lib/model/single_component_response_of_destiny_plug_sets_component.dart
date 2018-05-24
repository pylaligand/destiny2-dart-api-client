part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyPlugSetsComponent {
  
  @Property(name: 'data')
  DestinyComponentsPlugSetsDestinyPlugSetsComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyPlugSetsComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyPlugSetsComponent[data=$data, privacy=$privacy, ]';
  }
}

