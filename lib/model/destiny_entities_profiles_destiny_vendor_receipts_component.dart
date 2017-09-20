part of destiny2_api.api;

@Entity()
class DestinyEntitiesProfilesDestinyVendorReceiptsComponent {
  /* The receipts for refundable purchases made at a vendor. */
  @Property(name: 'receipts')
  List<DestinyVendorsDestinyVendorReceipt> receipts = [];
  
  DestinyEntitiesProfilesDestinyVendorReceiptsComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesProfilesDestinyVendorReceiptsComponent[receipts=$receipts, ]';
  }
}

