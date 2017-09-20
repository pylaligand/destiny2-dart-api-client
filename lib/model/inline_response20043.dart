part of destiny2_api.api;

@Entity()
class InlineResponse20043 {
  
  @Property(name: 'Response')
  Map<String, DestinyHistoricalStatsDestinyHistoricalStatsByPeriod> response = {};
  

  @Property(name: 'ErrorCode')
  ExceptionsPlatformErrorCodes errorCode = null;
  

  @Property(name: 'ThrottleSeconds')
  int throttleSeconds = null;
  

  @Property(name: 'ErrorStatus')
  String errorStatus = null;
  

  @Property(name: 'Message')
  String message = null;
  

  @Property(name: 'MessageData')
  Map<String, String> messageData = {};
  
  InlineResponse20043();

  @override
  String toString()  {
    return 'InlineResponse20043[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, ]';
  }
}

