part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyVendorGroupComponent {
  
  @Property(name: 'data')
  DestinyComponentsVendorsDestinyVendorGroupComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyVendorGroupComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyVendorGroupComponent[data=$data, privacy=$privacy, ]';
  }
}

