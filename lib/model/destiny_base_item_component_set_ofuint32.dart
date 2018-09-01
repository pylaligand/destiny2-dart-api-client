part of destiny2_api.api;

@Entity()
class DestinyBaseItemComponentSetOfuint32 {
  
  @Property(name: 'objectives')
  DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent objectives = null;
  
  DestinyBaseItemComponentSetOfuint32();

  @override
  String toString()  {
    return 'DestinyBaseItemComponentSetOfuint32[objectives=$objectives, ]';
  }
}

