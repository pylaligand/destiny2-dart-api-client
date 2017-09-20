part of destiny2_api.api;

@Entity()
class DestinyDestinyEquipItemResults {
  
  @Property(name: 'equipResults')
  List<DestinyDestinyEquipItemResult> equipResults = [];
  
  DestinyDestinyEquipItemResults();

  @override
  String toString()  {
    return 'DestinyDestinyEquipItemResults[equipResults=$equipResults, ]';
  }
}

