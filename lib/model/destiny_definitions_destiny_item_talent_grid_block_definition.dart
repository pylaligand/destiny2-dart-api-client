part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemTalentGridBlockDefinition {
  /* The hash identifier of the DestinyTalentGridDefinition attached to this item. */
  @Property(name: 'talentGridHash')
  int talentGridHash = null;
  
/* This is meant to be a subtitle for looking at the talent grid. In practice, somewhat frustratingly, this always merely says the localized word for \"Details\". Great. Maybe it'll have more if talent grids ever get used for more than builds and subclasses again. */
  @Property(name: 'itemDetailString')
  String itemDetailString = null;
  
/* A shortcut string identifier for the \"build\" in question, if this talent grid has an associated build. Doesn't map to anything we can expose at the moment. */
  @Property(name: 'buildName')
  String buildName = null;
  
/* If the talent grid implies a damage type, this is the enum value for that damage type. */
  @Property(name: 'hudDamageType')
  DestinyDamageType hudDamageType = null;
  
/* If the talent grid has a special icon that's shown in the game UI (like builds, funny that), this is the identifier for that icon. Sadly, we don't actually get that icon right now. I'll be looking to replace this with a path to the actual icon itself. */
  @Property(name: 'hudIcon')
  String hudIcon = null;
  
  DestinyDefinitionsDestinyItemTalentGridBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemTalentGridBlockDefinition[talentGridHash=$talentGridHash, itemDetailString=$itemDetailString, buildName=$buildName, hudDamageType=$hudDamageType, hudIcon=$hudIcon, ]';
  }
}

