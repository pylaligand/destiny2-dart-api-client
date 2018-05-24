part of destiny2_api.api;

@Entity()
class FireteamFireteamResponse {
  
  @Property(name: 'Summary')
  FireteamFireteamSummary summary = null;
  

  @Property(name: 'Members')
  List<FireteamFireteamMember> members = [];
  

  @Property(name: 'Alternates')
  List<FireteamFireteamMember> alternates = [];
  
  FireteamFireteamResponse();

  @override
  String toString()  {
    return 'FireteamFireteamResponse[summary=$summary, members=$members, alternates=$alternates, ]';
  }
}

