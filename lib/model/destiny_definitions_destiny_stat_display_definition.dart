part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyStatDisplayDefinition {
  /* The hash identifier for the stat being transformed into a Display stat.  Use it to look up the DestinyStatDefinition, or key into a DestinyInventoryItemDefinition's stats property. */
  @Property(name: 'statHash')
  int statHash = null;
  
/* Regardless of the output of interpolation, this is the maximum possible value that the stat can be. It should also be used as the upper bound for displaying the stat as a progress bar (the minimum always being 0) */
  @Property(name: 'maximumValue')
  int maximumValue = null;
  
/* If this is true, the stat should be displayed as a number. Otherwise, display it as a progress bar. Or, you know, do whatever you want. There's no displayAsNumeric police. */
  @Property(name: 'displayAsNumeric')
  bool displayAsNumeric = null;
  
/* The interpolation table representing how the Investment Stat is transformed into a Display Stat.   See DestinyStatDefinition for a description of the stages of stat transformation. */
  @Property(name: 'displayInterpolation')
  List<InterpolationInterpolationPoint> displayInterpolation = [];
  
  DestinyDefinitionsDestinyStatDisplayDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyStatDisplayDefinition[statHash=$statHash, maximumValue=$maximumValue, displayAsNumeric=$displayAsNumeric, displayInterpolation=$displayInterpolation, ]';
  }
}

