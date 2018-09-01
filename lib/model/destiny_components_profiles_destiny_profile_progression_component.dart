part of destiny2_api.api;

@Entity()
class DestinyComponentsProfilesDestinyProfileProgressionComponent {
  /* The set of checklists that can be examined on a profile-wide basis, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)  For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet. */
  @Property(name: 'checklists')
  Map<String, Map<String, bool>> checklists = {};
  
  DestinyComponentsProfilesDestinyProfileProgressionComponent();

  @override
  String toString()  {
    return 'DestinyComponentsProfilesDestinyProfileProgressionComponent[checklists=$checklists, ]';
  }
}

