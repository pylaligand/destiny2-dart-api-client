part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyArtDyeReference {
  
  @Property(name: 'artDyeChannelHash')
  int artDyeChannelHash = null;
  
  DestinyDefinitionsDestinyArtDyeReference();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyArtDyeReference[artDyeChannelHash=$artDyeChannelHash, ]';
  }
}

