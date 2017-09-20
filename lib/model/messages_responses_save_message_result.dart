part of destiny2_api.api;

@Entity()
class MessagesResponsesSaveMessageResult {
  
  @Property(name: 'conversationId')
  int conversationId = null;
  

  @Property(name: 'messageId')
  int messageId = null;
  
  MessagesResponsesSaveMessageResult();

  @override
  String toString()  {
    return 'MessagesResponsesSaveMessageResult[conversationId=$conversationId, messageId=$messageId, ]';
  }
}

