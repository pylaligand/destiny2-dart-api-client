part of destiny2_api.api;

@Entity()
class DestinyComponentsRecordsDestinyRecordComponent {
  
  @Property(name: 'state')
  DestinyDestinyRecordState state = null;
  

  @Property(name: 'objectives')
  List<DestinyQuestsDestinyObjectiveProgress> objectives = [];
  
  DestinyComponentsRecordsDestinyRecordComponent();

  @override
  String toString()  {
    return 'DestinyComponentsRecordsDestinyRecordComponent[state=$state, objectives=$objectives, ]';
  }
}

