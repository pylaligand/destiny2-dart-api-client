part of destiny2_api.api;

@Entity()
class DestinyDefinitionsReportingDestinyReportReasonDefinition {
  /* The identifier for the reason: they are only guaranteed unique under the Category in which they are found. */
  @Property(name: 'reasonHash')
  int reasonHash = null;
  

  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
  DestinyDefinitionsReportingDestinyReportReasonDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsReportingDestinyReportReasonDefinition[reasonHash=$reasonHash, displayProperties=$displayProperties, ]';
  }
}

