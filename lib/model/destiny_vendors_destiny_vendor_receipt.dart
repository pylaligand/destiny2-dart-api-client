part of destiny2_api.api;

@Entity()
class DestinyVendorsDestinyVendorReceipt {
  /* The amount paid for the item, in terms of items that were consumed in the purchase and their quantity. */
  @Property(name: 'currencyPaid')
  List<DestinyDestinyItemQuantity> currencyPaid = [];
  
/* The item that was received, and its quantity. */
  @Property(name: 'itemReceived')
  DestinyDestinyItemQuantity itemReceived = null;
  
/* The unlock flag used to determine whether you still have the purchased item. */
  @Property(name: 'licenseUnlockHash')
  int licenseUnlockHash = null;
  
/* The ID of the character who made the purchase. */
  @Property(name: 'purchasedByCharacterId')
  int purchasedByCharacterId = null;
  
/* Whether you can get a refund, and what happens in order for the refund to be received. See the DestinyVendorItemRefundPolicy enum for details. */
  @Property(name: 'refundPolicy')
  DestinyDestinyVendorItemRefundPolicy refundPolicy = null;
  
/* The identifier of this receipt. */
  @Property(name: 'sequenceNumber')
  int sequenceNumber = null;
  
/* The seconds since epoch at which this receipt is rendered invalid. */
  @Property(name: 'timeToExpiration')
  int timeToExpiration = null;
  
/* The date at which this receipt is rendered invalid. */
  @Property(name: 'expiresOn')
  DateTime expiresOn = null;
  
  DestinyVendorsDestinyVendorReceipt();

  @override
  String toString()  {
    return 'DestinyVendorsDestinyVendorReceipt[currencyPaid=$currencyPaid, itemReceived=$itemReceived, licenseUnlockHash=$licenseUnlockHash, purchasedByCharacterId=$purchasedByCharacterId, refundPolicy=$refundPolicy, sequenceNumber=$sequenceNumber, timeToExpiration=$timeToExpiration, expiresOn=$expiresOn, ]';
  }
}

