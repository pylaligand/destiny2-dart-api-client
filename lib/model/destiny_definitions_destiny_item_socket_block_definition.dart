part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSocketBlockDefinition {
  /* This was supposed to be a string that would give per-item details about sockets. In practice, it turns out that all this ever has is the localized word \"details\". ... that's lame, but perhaps it will become something cool in the future. */
  @Property(name: 'detail')
  String detail = null;
  
/* Each non-intrinsic (or mutable) socket on an item is defined here. Check inside for more info. */
  @Property(name: 'socketEntries')
  List<DestinyDefinitionsDestinyItemSocketEntryDefinition> socketEntries = [];
  
/* Each intrinsic (or immutable/permanent) socket on an item is defined here, along with the plug that is permanently affixed to the socket. */
  @Property(name: 'intrinsicSockets')
  List<DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition> intrinsicSockets = [];
  
/* A convenience property, that refers to the sockets in the \"sockets\" property, pre-grouped by category and ordered in the manner that they should be grouped in the UI. You could form this yourself with the existing data, but why would you want to? Enjoy life man. */
  @Property(name: 'socketCategories')
  List<DestinyDefinitionsDestinyItemSocketCategoryDefinition> socketCategories = [];
  
  DestinyDefinitionsDestinyItemSocketBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSocketBlockDefinition[detail=$detail, socketEntries=$socketEntries, intrinsicSockets=$intrinsicSockets, socketCategories=$socketCategories, ]';
  }
}

