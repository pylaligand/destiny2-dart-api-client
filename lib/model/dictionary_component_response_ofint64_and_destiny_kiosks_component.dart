part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyKiosksComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsKiosksDestinyKiosksComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyKiosksComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyKiosksComponent[data=$data, privacy=$privacy, ]';
  }
}

