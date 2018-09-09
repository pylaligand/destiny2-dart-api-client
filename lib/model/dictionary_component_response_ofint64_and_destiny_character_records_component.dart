part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsRecordsDestinyCharacterRecordsComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent[data=$data, privacy=$privacy, ]';
  }
}

