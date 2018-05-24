part of destiny2_api.api;

@Entity()
class InlineResponse2004 {
  
  @Property(name: 'Response')
  List<ConfigUserTheme> response = [];
  

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
  
  InlineResponse2004();

  @override
  String toString()  {
    return 'InlineResponse2004[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, ]';
  }
}

