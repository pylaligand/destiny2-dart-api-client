part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinySandboxPerkDefinition {
  /* These display properties are by no means guaranteed to be populated. Usually when it is, it's only because we back-filled them with the displayProperties of some Talent Node or Plug item that happened to be uniquely providing that perk. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The string identifier for the perk. */
  @Property(name: 'perkIdentifier')
  String perkIdentifier = null;
  
/* If true, you can actually show the perk in the UI. Otherwise, it doesn't have useful player-facing information. */
  @Property(name: 'isDisplayable')
  bool isDisplayable = null;
  
/* If this perk grants a damage type to a weapon, the damage type will be defined here.  Unless you have a compelling reason to use this enum value, use the damageTypeHash instead to look up the actual DestinyDamageTypeDefinition. */
  @Property(name: 'damageType')
  DestinyDamageType damageType = null;
  
/* The hash identifier for looking up the DestinyDamageTypeDefinition, if this perk has a damage type.  This is preferred over using the damageType enumeration value, which has been left purely because it is occasionally convenient. */
  @Property(name: 'damageTypeHash')
  int damageTypeHash = null;
  
/* An old holdover from the original Armory, this was an attempt to group perks by functionality.  It is as yet unpopulated, and there will be quite a bit of work needed to restore it to its former working order. */
  @Property(name: 'perkGroups')
  DestinyDefinitionsDestinyTalentNodeStepGroups perkGroups = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinySandboxPerkDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinySandboxPerkDefinition[displayProperties=$displayProperties, perkIdentifier=$perkIdentifier, isDisplayable=$isDisplayable, damageType=$damageType, damageTypeHash=$damageTypeHash, perkGroups=$perkGroups, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

