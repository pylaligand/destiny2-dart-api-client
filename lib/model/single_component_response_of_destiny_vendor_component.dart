part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyVendorComponent {
  
  @Property(name: 'data')
  DestinyEntitiesVendorsDestinyVendorComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyVendorComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyVendorComponent[data=$data, privacy=$privacy, ]';
  }
}

