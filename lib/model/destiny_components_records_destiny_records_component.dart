part of destiny2_api.api;

@Entity()
class DestinyComponentsRecordsDestinyRecordsComponent {
  
  @Property(name: 'records')
  Map<String, DestinyComponentsRecordsDestinyRecordComponent> records = {};
  
  DestinyComponentsRecordsDestinyRecordsComponent();

  @override
  String toString()  {
    return 'DestinyComponentsRecordsDestinyRecordsComponent[records=$records, ]';
  }
}

