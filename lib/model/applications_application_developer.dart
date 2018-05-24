part of destiny2_api.api;

@Entity()
class ApplicationsApplicationDeveloper {
  
  @Property(name: 'role')
  ApplicationsDeveloperRole role = null;
  

  @Property(name: 'apiEulaVersion')
  int apiEulaVersion = null;
  

  @Property(name: 'user')
  UserUserInfoCard user = null;
  
  ApplicationsApplicationDeveloper();

  @override
  String toString()  {
    return 'ApplicationsApplicationDeveloper[role=$role, apiEulaVersion=$apiEulaVersion, user=$user, ]';
  }
}

