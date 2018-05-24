part of destiny2_api.api;

@Entity()
class DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent {
  
  @Property(name: 'data')
  Map<String, DestinyComponentsInventoryDestinyCurrenciesComponent> data = {};
  

  @Property(name: 'privacy')
  ComponentsComponentPrivacySetting privacy = null;
  
  DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent();

  @override
  String toString()  {
    return 'DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent[data=$data, privacy=$privacy, ]';
  }
}

