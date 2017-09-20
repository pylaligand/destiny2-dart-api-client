part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemStatsComponent {
  /* If the item has stats that it provides (damage, defense, etc...), it will be given here. */
  @Property(name: 'stats')
  Map<String, DestinyDestinyStat> stats = {};
  
  DestinyEntitiesItemsDestinyItemStatsComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemStatsComponent[stats=$stats, ]';
  }
}

