part of destiny2_api.api;

@Entity()
class SingleComponentResponseOfDestinyCurrenciesComponent {
  
  @Property(name: 'data')
  DestinyComponentsInventoryDestinyCurrenciesComponent data = null;
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  SingleComponentResponseOfDestinyCurrenciesComponent();

  @override
  String toString()  {
    return 'SingleComponentResponseOfDestinyCurrenciesComponent[data=$data, privacy=$privacy, ]';
  }
}

