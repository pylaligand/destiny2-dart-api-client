part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesVendorsDestinyVendorCategoriesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent[data=$data, privacy=$privacy, ]';
  }
}

