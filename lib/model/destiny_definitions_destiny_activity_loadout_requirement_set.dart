part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityLoadoutRequirementSet {
  /* The set of requirements that will be applied on the activity if this requirement set is active. */
  @Property(name: 'requirements')
  List<DestinyDefinitionsDestinyActivityLoadoutRequirement> requirements = [];
  
  DestinyDefinitionsDestinyActivityLoadoutRequirementSet();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityLoadoutRequirementSet[requirements=$requirements, ]';
  }
}

