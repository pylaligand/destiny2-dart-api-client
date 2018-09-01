part of destiny2_api.api;

@Entity()
class StreamInfo {
  
  @Property(name: 'ChannelName')
  String channelName = null;
  
  StreamInfo();

  @override
  String toString()  {
    return 'StreamInfo[channelName=$channelName, ]';
  }
}

