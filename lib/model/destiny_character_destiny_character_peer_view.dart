part of destiny2_api.api;

@Entity()
class DestinyCharacterDestinyCharacterPeerView {
  
  @Property(name: 'equipment')
  List<DestinyCharacterDestinyItemPeerView> equipment = [];
  
  DestinyCharacterDestinyCharacterPeerView();

  @override
  String toString()  {
    return 'DestinyCharacterDestinyCharacterPeerView[equipment=$equipment, ]';
  }
}

