part of destiny2_api.api;

@Entity()
class InlineResponse20028 {
  
  @Property(name: 'Response')
  GroupsV2GroupMembershipSearchResponse response = null;
  

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
  
  InlineResponse20028();

  @override
  String toString()  {
    return 'InlineResponse20028[response=$response, errorCode=$errorCode, throttleSeconds=$throttleSeconds, errorStatus=$errorStatus, message=$message, messageData=$messageData, ]';
  }
}

