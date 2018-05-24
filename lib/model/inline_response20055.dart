part of destiny2_api.api;

@Entity()
class InlineResponse20055 {
  
  @Property(name: 'Response')
  SearchResultOfCommunityLiveStatus response = null;
  

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
  
  InlineResponse20055();

  @override
  String toString()  {
    return 'InlineResponse20055[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, ]';
  }
}

