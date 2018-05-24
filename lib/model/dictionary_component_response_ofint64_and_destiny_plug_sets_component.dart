part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsPlugSetsDestinyPlugSetsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent[data=$data, privacy=$privacy, ]';
  }
}

