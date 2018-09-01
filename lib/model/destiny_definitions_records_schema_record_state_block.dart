part of destiny2_api.api;

@Entity()
class DestinyDefinitionsRecordsSchemaRecordStateBlock {
  
  @Property(name: 'featuredPriority')
  int featuredPriority = null;
  

  @Property(name: 'obscuredString')
  String obscuredString = null;
  
  DestinyDefinitionsRecordsSchemaRecordStateBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsRecordsSchemaRecordStateBlock[featuredPriority=$featuredPriority, obscuredString=$obscuredString, ]';
  }
}

