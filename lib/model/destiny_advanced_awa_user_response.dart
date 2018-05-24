part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaUserResponse {
  /* Indication of the selection the user has made (Approving or rejecting the action) */
  @Property(name: 'selection')
  DestinyAdvancedAwaUserSelection selection = null;
  
/* Correlation ID of the request */
  @Property(name: 'correlationId')
  String correlationId = null;
  
/* Secret nonce received via the PUSH notification. */
  @Property(name: 'nonce')
  List<ByteArray> nonce = [];
  
  DestinyAdvancedAwaUserResponse();

  @override
  String toString()  {
    return 'DestinyAdvancedAwaUserResponse[selection=$selection, correlationId=$correlationId, nonce=$nonce, ]';
  }
}

