part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsVendorsDestinyVendorSaleItemSetComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent[data=$data, privacy=$privacy, ]';
  }
}

