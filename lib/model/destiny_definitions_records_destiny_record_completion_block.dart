part of destiny2_api.api;

@Entity()
class DestinyDefinitionsRecordsDestinyRecordCompletionBlock {
  
  @Property(name: 'partialCompletionObjectiveCountThreshold')
  int partialCompletionObjectiveCountThreshold = null;
  

  @Property(name: 'ScoreValue')
  int scoreValue = null;
  

  @Property(name: 'shouldFireToast')
  bool shouldFireToast = null;
  

  @Property(name: 'toastStyle')
  DestinyDestinyRecordToastStyle toastStyle = null;
  
  DestinyDefinitionsRecordsDestinyRecordCompletionBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsRecordsDestinyRecordCompletionBlock[partialCompletionObjectiveCountThreshold=$partialCompletionObjectiveCountThreshold, scoreValue=$scoreValue, shouldFireToast=$shouldFireToast, toastStyle=$toastStyle, ]';
  }
}

