part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyVendorCategoriesComponent {
  
  @Property(name: 'data')
  DestinyEntitiesVendorsDestinyVendorCategoriesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyVendorCategoriesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyVendorCategoriesComponent[data=$data, privacy=$privacy, ]';
  }
}

