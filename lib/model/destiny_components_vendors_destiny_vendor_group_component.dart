part of destiny2_api.api;

@Entity()
class DestinyComponentsVendorsDestinyVendorGroupComponent {
  /* The ordered list of groups being returned. */
  @Property(name: 'groups')
  List<DestinyComponentsVendorsDestinyVendorGroup> groups = [];
  
  DestinyComponentsVendorsDestinyVendorGroupComponent();

  @override
  String toString()  {
    return 'DestinyComponentsVendorsDestinyVendorGroupComponent[groups=$groups, ]';
  }
}

