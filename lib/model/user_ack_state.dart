part of destiny2_api.api;

@Entity()
class UserAckState {
  /* Indicates the related item has not been acknowledged. */
  @Property(name: 'needsAck')
  bool needsAck = null;
  
/* Identifier to use when acknowledging the related item. [category]:[entityId]:[targetId] */
  @Property(name: 'ackId')
  String ackId = null;
  
  UserAckState();

  @override
  String toString()  {
    return 'UserAckState[needsAck=$needsAck, ackId=$ackId, ]';
  }
}

