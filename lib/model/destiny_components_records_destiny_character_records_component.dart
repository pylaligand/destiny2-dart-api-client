part of destiny2_api.api;

@Entity()
class DestinyComponentsRecordsDestinyCharacterRecordsComponent {
  
  @Property(name: 'featuredRecordHashes')
  List<int> featuredRecordHashes = [];
  

  @Property(name: 'records')
  Map<String, DestinyComponentsRecordsDestinyRecordComponent> records = {};
  
  DestinyComponentsRecordsDestinyCharacterRecordsComponent();

  @override
  String toString()  {
    return 'DestinyComponentsRecordsDestinyCharacterRecordsComponent[featuredRecordHashes=$featuredRecordHashes, records=$records, ]';
  }
}

