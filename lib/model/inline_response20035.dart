part of destiny2_api.api;

@Entity()
class InlineResponse20035 {
  
  @Property(name: 'Response')
  List<UserUserInfoCard> response = [];
  

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
  
  InlineResponse20035();

  @override
  String toString()  {
    return 'InlineResponse20035[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, detailedErrorTrace=$detailedErrorTrace, ]';
  }
}

