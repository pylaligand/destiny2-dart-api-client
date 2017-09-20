part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyDamageTypeDefinition {
  /* The description of the damage type, icon etc... */
  @Property(name: 'displayProperties')
  Object displayProperties = null;
  
/* A variant of the icon that is transparent and colorless. */
  @Property(name: 'transparentIconPath')
  String transparentIconPath = null;
  
/* If TRUE, the game shows this damage type's icon. Otherwise, it doesn't. Whether you show it or not is up to you. */
  @Property(name: 'showIcon')
  bool showIcon = null;
  
/* We have an enumeration for damage types for quick reference. This is the current definition's damage type enum value. */
  @Property(name: 'enumValue')
  Object enumValue = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyDamageTypeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyDamageTypeDefinition[displayProperties=$displayProperties, transparentIconPath=$transparentIconPath, showIcon=$showIcon, enumValue=$enumValue, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

