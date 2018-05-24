part of destiny2_api.api;

@Entity()
class ApplicationsDatapoint {
  /* Timestamp for the related count. */
  @Property(name: 'time')
  DateTime time = null;
  
/* Count associated with timestamp */
  @Property(name: 'count')
  double count = null;
  
  ApplicationsDatapoint();

  @override
  String toString()  {
    return 'ApplicationsDatapoint[time=$time, count=$count, ]';
  }
}

