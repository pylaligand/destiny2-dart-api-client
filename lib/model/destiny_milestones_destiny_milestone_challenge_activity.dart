part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyMilestoneChallengeActivity {
  
  @Property(name: 'activityHash')
  int activityHash = null;
  

  @Property(name: 'challenges')
  List<DestinyChallengesDestinyChallengeStatus> challenges = [];
  
/* If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data.  Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
  @Property(name: 'modifierHashes')
  List<int> modifierHashes = [];
  
/* If returned, this is the index into the DestinyActivityDefinition's \"loadouts\" property, indicating the currently active loadout requirements. */
  @Property(name: 'loadoutRequirementIndex')
  int loadoutRequirementIndex = null;
  
/* If the Activity has discrete \"phases\" that we can track, that info will be here. Otherwise, this value will be NULL. Note that this is a list and not a dictionary: the order implies the ascending order of phases or progression in this activity. */
  @Property(name: 'phases')
  List<DestinyMilestonesDestinyMilestoneActivityPhase> phases = [];
  
  DestinyMilestonesDestinyMilestoneChallengeActivity();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyMilestoneChallengeActivity[activityHash=$activityHash, challenges=$challenges, modifierHashes=$modifierHashes, loadoutRequirementIndex=$loadoutRequirementIndex, phases=$phases, ]';
  }
}

