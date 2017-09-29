part of destiny2_api.api;

@Entity()
class DestinyEntitiesCharactersDestinyCharacterRenderComponent {
  /* Custom dyes, calculated by iterating over the character's equipped items. Useful for pre-fetching all of the dye data needed from our server. */
  @Property(name: 'customDyes')
  List<DestinyDyeReference> customDyes = [];
  
/* This is actually something that Spasm.js *doesn't* do right now, and that we don't return assets for yet. This is the data about what character customization options you picked. You can combine this with DestinyCharacterCustomizationOptionDefinition to show some cool info, and hopefully someday to actually render a user's face in 3D. We'll see if we ever end up with time for that. */
  @Property(name: 'customization')
  DestinyCharacterDestinyCharacterCustomization customization = null;
  
/* A minimal view of:  - Equipped items  - The rendering-related custom options on those equipped items  Combined, that should be enough to render all of the items on the equipped character. */
  @Property(name: 'peerView')
  DestinyCharacterDestinyCharacterPeerView peerView = null;
  
  DestinyEntitiesCharactersDestinyCharacterRenderComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesCharactersDestinyCharacterRenderComponent[customDyes=$customDyes, customization=$customization, peerView=$peerView, ]';
  }
}

