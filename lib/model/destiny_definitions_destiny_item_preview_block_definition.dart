part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemPreviewBlockDefinition {
  /* A string that the game UI uses as a hint for which detail screen to show for the item. You, too, can leverage this for your own custom screen detail views. Note, however, that these are arbitrarily defined by designers: there's no guarantees of a fixed, known number of these - so fall back to something reasonable if you don't recognize it. */
  @Property(name: 'screenStyle')
  String screenStyle = null;
  
/* If the preview data is derived from a fake \"Preview\" Vendor, this will be the hash identifier for the DestinyVendorDefinition of that fake vendor. */
  @Property(name: 'previewVendorHash')
  int previewVendorHash = null;
  
/* If the preview has an associated action (like \"Open\"), this will be the localized string for that action. */
  @Property(name: 'previewActionString')
  String previewActionString = null;
  
/* This is a list of the items being previewed, categorized in the same way as they are in the preview UI. */
  @Property(name: 'derivedItemCategories')
  List<DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition> derivedItemCategories = [];
  
  DestinyDefinitionsDestinyItemPreviewBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemPreviewBlockDefinition[screenStyle=$screenStyle, previewVendorHash=$previewVendorHash, previewActionString=$previewActionString, derivedItemCategories=$derivedItemCategories, ]';
  }
}

