part of destiny2_api.api;

@Entity()
class DestinyMilestonesDestinyPublicMilestoneChallengeActivity {
  
  @Property(name: 'activityHash')
  int activityHash = null;
  

  @Property(name: 'challengeObjectiveHashes')
  List<int> challengeObjectiveHashes = [];
  
/* If the activity has modifiers, this will be the list of modifiers that all variants have in common. Perform lookups against DestinyActivityModifierDefinition which defines the modifier being applied to get at the modifier data.  Note that, in the DestiyActivityDefinition, you will see many more modifiers than this being referred to: those are all *possible* modifiers for the activity, not the active ones. Use only the active ones to match what's really live. */
  @Property(name: 'modifierHashes')
  List<int> modifierHashes = [];
  
/* If returned, this is the index into the DestinyActivityDefinition's \"loadouts\" property, indicating the currently active loadout requirements. */
  @Property(name: 'loadoutRequirementIndex')
  int loadoutRequirementIndex = null;
  
  DestinyMilestonesDestinyPublicMilestoneChallengeActivity();

  @override
  String toString()  {
    return 'DestinyMilestonesDestinyPublicMilestoneChallengeActivity[activityHash=$activityHash, challengeObjectiveHashes=$challengeObjectiveHashes, modifierHashes=$modifierHashes, loadoutRequirementIndex=$loadoutRequirementIndex, ]';
  }
}

