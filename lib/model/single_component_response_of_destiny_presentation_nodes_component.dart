part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyPresentationNodesComponent {
  
  @Property(name: 'data')
  DestinyComponentsPresentationDestinyPresentationNodesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyPresentationNodesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyPresentationNodesComponent[data=$data, privacy=$privacy, ]';
  }
}

