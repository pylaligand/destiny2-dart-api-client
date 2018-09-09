part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyProfileRecordsComponent {
  
  @Property(name: 'data')
  DestinyComponentsRecordsDestinyProfileRecordsComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyProfileRecordsComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyProfileRecordsComponent[data=$data, privacy=$privacy, ]';
  }
}

