part of destiny2_api.api;

@Entity()
class DestinyComponentsKiosksDestinyKiosksComponent {
  /* A dictionary keyed by the Kiosk Vendor's hash identifier (use it to look up the DestinyVendorDefinition for the relevant kiosk vendor), and whose value is a list of all the items that the user can \"see\" in the Kiosk, and any other interesting metadata. */
  @Property(name: 'kioskItems')
  Map<String, List<DestinyComponentsKiosksDestinyKioskItem>> kioskItems = {};
  
  DestinyComponentsKiosksDestinyKiosksComponent();

  @override
  String toString()  {
    return 'DestinyComponentsKiosksDestinyKiosksComponent[kioskItems=$kioskItems, ]';
  }
}

