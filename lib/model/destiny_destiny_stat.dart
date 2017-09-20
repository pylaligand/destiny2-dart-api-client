part of destiny2_api.api;

@Entity()
class DestinyDestinyStat {
  /* The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat. */
  @Property(name: 'statHash')
  int statHash = null;
  
/* The current value of the Stat. */
  @Property(name: 'value')
  int value = null;
  
/* The highest possible value for the stat, if we were able to compute it. (I wouldn't necessarily trust this value right now. I would like to improve its calculation in later iterations of the API. Consider this a placeholder for desired future functionality) */
  @Property(name: 'maximumValue')
  int maximumValue = null;
  
  DestinyDestinyStat();

  @override
  String toString()  {
    return 'DestinyDestinyStat[statHash=$statHash, value=$value, maximumValue=$maximumValue, ]';
  }
}

