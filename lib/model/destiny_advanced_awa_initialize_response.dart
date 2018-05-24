part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaInitializeResponse {
  /* ID used to get the token. Present this ID to the user as it will identify this specific request on their device. */
  @Property(name: 'correlationId')
  String correlationId = null;
  
/* True if the PUSH message will only be sent to the device that made this request. */
  @Property(name: 'sentToSelf')
  bool sentToSelf = null;
  
  DestinyAdvancedAwaInitializeResponse();

  @override
  String toString()  {
    return 'DestinyAdvancedAwaInitializeResponse[correlationId=$correlationId, sentToSelf=$sentToSelf, ]';
  }
}

