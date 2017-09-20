part of destiny2_api.api;

@Entity()
class DatesDateRange {
  
  @Property(name: 'start')
  DateTime start = null;
  

  @Property(name: 'end')
  DateTime end = null;
  
  DatesDateRange();

  @override
  String toString()  {
    return 'DatesDateRange[start=$start, end=$end, ]';
  }
}

