part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemSocketsComponent {
  /* The list of all sockets on the item, and their status information. */
  @Property(name: 'sockets')
  List<DestinyEntitiesItemsDestinyItemSocketState> sockets = [];
  
  DestinyEntitiesItemsDestinyItemSocketsComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemSocketsComponent[sockets=$sockets, ]';
  }
}

