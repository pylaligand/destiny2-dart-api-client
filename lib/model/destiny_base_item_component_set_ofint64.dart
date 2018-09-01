part of destiny2_api.api;

@Entity()
class DestinyBaseItemComponentSetOfint64 {
  
  @Property(name: 'objectives')
  DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent objectives = null;
  
  DestinyBaseItemComponentSetOfint64();

  @override
  String toString()  {
    return 'DestinyBaseItemComponentSetOfint64[objectives=$objectives, ]';
  }
}

