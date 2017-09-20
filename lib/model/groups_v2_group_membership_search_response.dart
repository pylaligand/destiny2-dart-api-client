part of destiny2_api.api;

@Entity()
class GroupsV2GroupMembershipSearchResponse {
  
  @Property(name: 'results')
  List<GroupsV2GroupMembership> results = [];
  

  @Property(name: 'totalResults')
  int totalResults = null;
  

  @Property(name: 'hasMore')
  bool hasMore = null;
  

  @Property(name: 'query')
  QueriesPagedQuery query = null;
  

  @Property(name: 'replacementContinuationToken')
  String replacementContinuationToken = null;
  
/* If useTotalResults is true, then totalResults represents an accurate count.  If False, it does not, and may be estimated/only the size of the current page.  Either way, you should probably always only trust hasMore.  This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one. */
  @Property(name: 'useTotalResults')
  bool useTotalResults = null;
  
  GroupsV2GroupMembershipSearchResponse();

  @override
  String toString()  {
    return 'GroupsV2GroupMembershipSearchResponse[results=$results, totalResults=$totalResults, hasMore=$hasMore, query=$query, replacementContinuationToken=$replacementContinuationToken, useTotalResults=$useTotalResults, ]';
  }
}

