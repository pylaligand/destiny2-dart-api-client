part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsItemsDestinyItemPlugComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent[data=$data, privacy=$privacy, ]';
  }
}

