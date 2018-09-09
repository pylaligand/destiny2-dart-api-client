part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsCollectiblesDestinyCollectiblesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent[data=$data, privacy=$privacy, ]';
  }
}

