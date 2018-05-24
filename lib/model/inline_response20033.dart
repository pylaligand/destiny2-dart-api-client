part of destiny2_api.api;

@Entity()
class InlineResponse20033 {
  
  @Property(name: 'Response')
  DestinyResponsesDestinyProfileResponse response = null;
  

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
  
  InlineResponse20033();

  @override
  String toString()  {
    return 'InlineResponse20033[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, ]';
  }
}

