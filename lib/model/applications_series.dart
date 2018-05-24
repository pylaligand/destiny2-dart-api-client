part of destiny2_api.api;

@Entity()
class ApplicationsSeries {
  /* Collection of samples with time and value. */
  @Property(name: 'datapoints')
  List<ApplicationsDatapoint> datapoints = [];
  
/* Target to which to datapoints apply. */
  @Property(name: 'target')
  String target = null;
  
  ApplicationsSeries();

  @override
  String toString()  {
    return 'ApplicationsSeries[datapoints=$datapoints, target=$target, ]';
  }
}

