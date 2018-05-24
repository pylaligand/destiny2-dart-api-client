part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesVendorsDestinyVendorComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyVendorComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyVendorComponent[data=$data, privacy=$privacy, ]';
  }
}

