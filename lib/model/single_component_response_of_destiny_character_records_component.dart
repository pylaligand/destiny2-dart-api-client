part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCharacterRecordsComponent {
  
  @Property(name: 'data')
  DestinyComponentsRecordsDestinyCharacterRecordsComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCharacterRecordsComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCharacterRecordsComponent[data=$data, privacy=$privacy, ]';
  }
}

