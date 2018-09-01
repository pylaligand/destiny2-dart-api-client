part of destiny2_api.api;

@Entity()
class DestinyDefinitionsRecordsDestinyRecordTitleBlock {
  
  @Property(name: 'hasTitle')
  bool hasTitle = null;
  

  @Property(name: 'titlesByGender')
  Map<String, String> titlesByGender = {};
  
  DestinyDefinitionsRecordsDestinyRecordTitleBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsRecordsDestinyRecordTitleBlock[hasTitle=$hasTitle, titlesByGender=$titlesByGender, ]';
  }
}

