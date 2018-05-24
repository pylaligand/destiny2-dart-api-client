part of destiny2_api.api;

@Entity()
class ApplicationsApiUsage {
  /* The date range for the data being reported. */
  @Property(name: 'range')
  DatesDateRange range = null;
  
/* Counts for on API calls made for the time range. */
  @Property(name: 'apiCalls')
  List<ApplicationsSeries> apiCalls = [];
  
/* Instances of blocked requests or requests that crossed the warn threshold during the time range. */
  @Property(name: 'throttledRequests')
  List<ApplicationsSeries> throttledRequests = [];
  
  ApplicationsApiUsage();

  @override
  String toString()  {
    return 'ApplicationsApiUsage[range=$range, apiCalls=$apiCalls, throttledRequests=$throttledRequests, ]';
  }
}

