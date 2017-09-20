part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyVendorReceiptsComponent {
  
  @Property(name: 'data')
  DestinyEntitiesProfilesDestinyVendorReceiptsComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyVendorReceiptsComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyVendorReceiptsComponent[data=$data, privacy=$privacy, ]';
  }
}

