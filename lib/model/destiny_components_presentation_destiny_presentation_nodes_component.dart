part of destiny2_api.api;

@Entity()
class DestinyComponentsPresentationDestinyPresentationNodesComponent {
  
  @Property(name: 'nodes')
  Map<String, DestinyComponentsPresentationDestinyPresentationNodeComponent> nodes = {};
  
  DestinyComponentsPresentationDestinyPresentationNodesComponent();

  @override
  String toString()  {
    return 'DestinyComponentsPresentationDestinyPresentationNodesComponent[nodes=$nodes, ]';
  }
}

