part of destiny2_api.api;

@Entity()
class InlineResponse2008 {
  
  @Property(name: 'Response')
  ContentContentItemPublicContract response = null;
  

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
  
  InlineResponse2008();

  @override
  String toString()  {
    return 'InlineResponse2008[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, detailedErrorTrace=$detailedErrorTrace, ]';
  }
}

