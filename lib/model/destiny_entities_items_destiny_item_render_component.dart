part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemRenderComponent {
  /* If you should use custom dyes on this item, it will be indicated here. */
  @Property(name: 'useCustomDyes')
  bool useCustomDyes = null;
  
/* A dictionary for rendering gear components, with:  key = Art Arrangement Region Index  value = The chosen Arrangement Index for the Region, based on the value of a stat on the item used for making the choice. */
  @Property(name: 'artRegions')
  Map<String, int> artRegions = {};
  
  DestinyEntitiesItemsDestinyItemRenderComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemRenderComponent[useCustomDyes=$useCustomDyes, artRegions=$artRegions, ]';
  }
}

