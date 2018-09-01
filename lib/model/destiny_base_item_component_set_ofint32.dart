part of destiny2_api.api;

@Entity()
class DestinyBaseItemComponentSetOfint32 {
  
  @Property(name: 'objectives')
  DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent objectives = null;
  
  DestinyBaseItemComponentSetOfint32();

  @override
  String toString()  {
    return 'DestinyBaseItemComponentSetOfint32[objectives=$objectives, ]';
  }
}

