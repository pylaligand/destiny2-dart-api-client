part of destiny2_api.api;

@Entity()
class DestinyComponentsInventoryDestinyCurrenciesComponent {
  /* A dictionary - keyed by the item's hash identifier (DestinyInventoryItemDefinition), and whose value is the amount of that item you have across all available inventory buckets for purchasing.  This allows you to see whether the requesting character can afford any given purchase/action without having to re-create this list itself. */
  @Property(name: 'itemQuantities')
  Map<String, int> itemQuantities = {};
  
  DestinyComponentsInventoryDestinyCurrenciesComponent();

  @override
  String toString()  {
    return 'DestinyComponentsInventoryDestinyCurrenciesComponent[itemQuantities=$itemQuantities, ]';
  }
}

