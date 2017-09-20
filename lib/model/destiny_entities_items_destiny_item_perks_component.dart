part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemPerksComponent {
  /* The list of perks to display in an item tooltip - and whether or not they have been activated. */
  @Property(name: 'perks')
  List<DestinyPerksDestinyPerkReference> perks = [];
  
  DestinyEntitiesItemsDestinyItemPerksComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemPerksComponent[perks=$perks, ]';
  }
}

