part of destiny2_api.api;

@Entity()
class DestinyDyeReference {
  
  @Property(name: 'channelHash')
  int channelHash = null;
  

  @Property(name: 'dyeHash')
  int dyeHash = null;
  
  DestinyDyeReference();

  @override
  String toString()  {
    return 'DestinyDyeReference[channelHash=$channelHash, dyeHash=$dyeHash, ]';
  }
}

