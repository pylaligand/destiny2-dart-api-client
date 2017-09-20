part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent {
  
  @Property(name: 'data')
  Map<String, DestinyEntitiesVendorsDestinyVendorSaleItemComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent[data=$data, privacy=$privacy, ]';
  }
}

