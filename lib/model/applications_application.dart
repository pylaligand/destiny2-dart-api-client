part of destiny2_api.api;

@Entity()
class ApplicationsApplication {
  
  @Property(name: 'applicationType')
  ApplicationsOAuthApplicationType applicationType = null;
  
/* Unique ID assigned to the application */
  @Property(name: 'applicationId')
  int applicationId = null;
  
/* Name of the application */
  @Property(name: 'name')
  String name = null;
  
/* URL used to pass the user's authorization code to the application */
  @Property(name: 'redirectUrl')
  String redirectUrl = null;
  
/* Link to website for the application where a user can learn more about the app. */
  @Property(name: 'link')
  String link = null;
  
/* Permissions the application needs to work */
  @Property(name: 'scope')
  int scope = null;
  
/* Value of the Origin header sent in requests generated by this application. */
  @Property(name: 'origin')
  String origin = null;
  
/* Current status of the application. */
  @Property(name: 'status')
  ApplicationsApplicationStatus status = null;
  
/* Date the application was first added to our database. */
  @Property(name: 'creationDate')
  DateTime creationDate = null;
  
/* Date the application status last changed. */
  @Property(name: 'statusChanged')
  DateTime statusChanged = null;
  
/* Date the first time the application status entered the 'Public' status. */
  @Property(name: 'firstPublished')
  DateTime firstPublished = null;
  
/* List of team members who manage this application on Bungie.net. Will always consist of at least the application owner. */
  @Property(name: 'team')
  List<ApplicationsApplicationDeveloper> team = [];
  
  ApplicationsApplication();

  @override
  String toString()  {
    return 'ApplicationsApplication[applicationType=$applicationType, applicationId=$applicationId, name=$name, redirectUrl=$redirectUrl, link=$link, scope=$scope, origin=$origin, status=$status, creationDate=$creationDate, statusChanged=$statusChanged, firstPublished=$firstPublished, team=$team, ]';
  }
}

