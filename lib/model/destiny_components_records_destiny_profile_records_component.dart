part of destiny2_api.api;

@Entity()
class DestinyComponentsRecordsDestinyProfileRecordsComponent {
  /* Your \"Triumphs\" score. */
  @Property(name: 'score')
  int score = null;
  
/* If this profile is tracking a record, this is the hash identifier of the record it is tracking. */
  @Property(name: 'trackedRecordHash')
  int trackedRecordHash = null;
  

  @Property(name: 'records')
  Map<String, DestinyComponentsRecordsDestinyRecordComponent> records = {};
  
  DestinyComponentsRecordsDestinyProfileRecordsComponent();

  @override
  String toString()  {
    return 'DestinyComponentsRecordsDestinyProfileRecordsComponent[score=$score, trackedRecordHash=$trackedRecordHash, records=$records, ]';
  }
}

