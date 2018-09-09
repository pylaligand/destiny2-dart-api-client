part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsPresentationDestinyPresentationNodesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent[data=$data, privacy=$privacy, ]';
  }
}

