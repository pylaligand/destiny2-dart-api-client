part of destiny2_api.api;

@Entity()
class DestinyEntitiesCharactersDestinyCharacterProgressionComponent {
  /* A Dictionary of all known progressions for the Character, keyed by the Progression's hash.  Not all progressions have user-facing data, but those who do will have that data contained in the DestinyProgressionDefinition. */
  @Property(name: 'progressions')
  Map<String, DestinyDestinyProgression> progressions = {};
  
/* A dictionary of all known Factions, keyed by the Faction's hash. It contains data about this character's status with the faction. */
  @Property(name: 'factions')
  Map<String, DestinyProgressionDestinyFactionProgression> factions = {};
  
/* Milestones are related to the simple progressions shown in the game, but return additional and hopefully helpful information for users about the specifics of the Milestone's status. */
  @Property(name: 'milestones')
  Map<String, DestinyMilestonesDestinyMilestone> milestones = {};
  
/* If the user has any active quests, the quests' statuses will be returned here.  Note that quests have been largely supplanted by Milestones, but that doesn't mean that they won't make a comeback independent of milestones at some point. */
  @Property(name: 'quests')
  List<DestinyQuestsDestinyQuestStatus> quests = [];
  
/* Sometimes, you have items in your inventory that don't have instances, but still have Objective information. This provides you that objective information for uninstanced items.   This dictionary is keyed by the item's hash: which you can use to look up the name and description for the overall task(s) implied by the objective. The value is the list of objectives for this item, and their statuses. */
  @Property(name: 'uninstancedItemObjectives')
  Map<String, List<DestinyQuestsDestinyObjectiveProgress>> uninstancedItemObjectives = {};
  
/* The set of checklists that can be examined for this specific character, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)  For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet. */
  @Property(name: 'checklists')
  Map<String, Map<String, bool>> checklists = {};
  
  DestinyEntitiesCharactersDestinyCharacterProgressionComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesCharactersDestinyCharacterProgressionComponent[progressions=$progressions, factions=$factions, milestones=$milestones, quests=$quests, uninstancedItemObjectives=$uninstancedItemObjectives, checklists=$checklists, ]';
  }
}

