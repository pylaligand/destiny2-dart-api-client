part of destiny2_api.api;

@Entity()
class DestinyComponentsPresentationDestinyPresentationNodeComponent {
  
  @Property(name: 'state')
  DestinyDestinyPresentationNodeState state = null;
  

  @Property(name: 'objective')
  DestinyQuestsDestinyObjectiveProgress objective = null;
  
  DestinyComponentsPresentationDestinyPresentationNodeComponent();

  @override
  String toString()  {
    return 'DestinyComponentsPresentationDestinyPresentationNodeComponent[state=$state, objective=$objective, ]';
  }
}

