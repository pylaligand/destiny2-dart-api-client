part of destiny2_api.api;

@Entity()
class DestinyPerksDestinyPerkReference {
  /* The hash identifier for the perk, which can be used to look up DestinySandboxPerkDefinition if it exists. Be warned, perks frequently do not have user-viewable information. You should examine whether you actually found a name/description in the perk's definition before you show it to the user. */
  @Property(name: 'perkHash')
  int perkHash = null;
  
/* The icon for the perk. */
  @Property(name: 'iconPath')
  String iconPath = null;
  
/* Whether this perk is currently active. (We may return perks that you have not actually activated yet: these represent perks that you should show in the item's tooltip, but that the user has not yet activated.) */
  @Property(name: 'isActive')
  bool isActive = null;
  
/* Some perks provide benefits, but aren't visible in the UI. This value will let you know if this is perk should be shown in your UI. */
  @Property(name: 'visible')
  bool visible = null;
  
  DestinyPerksDestinyPerkReference();

  @override
  String toString()  {
    return 'DestinyPerksDestinyPerkReference[perkHash=$perkHash, iconPath=$iconPath, isActive=$isActive, visible=$visible, ]';
  }
}

