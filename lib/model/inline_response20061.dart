part of destiny2_api.api;

@Entity()
class InlineResponse20061 {
  
  @Property(name: 'Response')
  TrendingTrendingCategories response = null;
  

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
  

  @Property(name: 'DetailedErrorTrace')
  String detailedErrorTrace = null;
  
  InlineResponse20061();

  @override
  String toString()  {
    return 'InlineResponse20061[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, detailedErrorTrace=$detailedErrorTrace, ]';
  }
}

