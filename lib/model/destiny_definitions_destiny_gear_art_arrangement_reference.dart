part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyGearArtArrangementReference {
  
  @Property(name: 'classHash')
  int classHash = null;
  

  @Property(name: 'artArrangementHash')
  int artArrangementHash = null;
  
  DestinyDefinitionsDestinyGearArtArrangementReference();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyGearArtArrangementReference[classHash=$classHash, artArrangementHash=$artArrangementHash, ]';
  }
}

