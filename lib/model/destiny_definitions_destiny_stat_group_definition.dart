part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyStatGroupDefinition {
  /* The maximum possible value that any stat in this group can be transformed into.  This is used by stats that *don't* have scaledStats entries below, but that still need to be displayed as a progress bar, in which case this is used as the upper bound for said progress bar. (the lower bound is always 0) */
  @Property(name: 'maximumValue')
  int maximumValue = null;
  
/* This apparently indicates the position of the stats in the UI? I've returned it in case anyone can use it, but it's not of any use to us on BNet. Something's being lost in translation with this value. */
  @Property(name: 'uiPosition')
  int uiPosition = null;
  
/* Any stat that requires scaling to be transformed from an \"Investment\" stat to a \"Display\" stat will have an entry in this list. For more information on what those types of stats mean and the transformation process, see DestinyStatDefinition.  In retrospect, I wouldn't mind if this was a dictionary keyed by the stat hash instead. But I'm going to leave it be because [[After Apple Picking]]. */
  @Property(name: 'scaledStats')
  List<DestinyDefinitionsDestinyStatDisplayDefinition> scaledStats = [];
  
/* The game has the ability to override, based on the stat group, what the localized text is that is displayed for Stats being shown on the item.  Mercifully, no Stat Groups use this feature currently. If they start using them, we'll all need to start using them (and those of you who are more prudent than I am can go ahead and start pre-checking for this.) */
  @Property(name: 'overrides')
  Map<String, DestinyDefinitionsDestinyStatOverrideDefinition> overrides = {};
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyStatGroupDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyStatGroupDefinition[maximumValue=$maximumValue, uiPosition=$uiPosition, scaledStats=$scaledStats, overrides=$overrides, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

