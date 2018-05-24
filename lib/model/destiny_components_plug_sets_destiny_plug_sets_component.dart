part of destiny2_api.api;

@Entity()
class DestinyComponentsPlugSetsDestinyPlugSetsComponent {
  /* The shared list of plugs for each relevant PlugSet, keyed by the hash identifier of the PlugSet (DestinyPlugSetDefinition). */
  @Property(name: 'plugs')
  Map<String, List<DestinySocketsDestinyItemPlug>> plugs = {};
  
  DestinyComponentsPlugSetsDestinyPlugSetsComponent();

  @override
  String toString()  {
    return 'DestinyComponentsPlugSetsDestinyPlugSetsComponent[plugs=$plugs, ]';
  }
}

