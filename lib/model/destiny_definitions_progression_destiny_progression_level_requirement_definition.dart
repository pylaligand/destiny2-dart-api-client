part of destiny2_api.api;

@Entity()
class DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition {
  /* A curve of level requirements, weighted by the related progressions' level.  Interpolate against this curve with the character's progression level to determine what the level requirement of the generated item that is using this data will be. */
  @Property(name: 'requirementCurve')
  List<InterpolationInterpolationPointFloat> requirementCurve = [];
  
/* The progression whose level should be used to determine the level requirement.  Look up the DestinyProgressionDefinition with this hash for more information about the progression in question. */
  @Property(name: 'progressionHash')
  int progressionHash = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition[requirementCurve=$requirementCurve, progressionHash=$progressionHash, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

