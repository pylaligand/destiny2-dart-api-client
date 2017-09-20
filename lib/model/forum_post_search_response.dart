part of destiny2_api.api;

@Entity()
class ForumPostSearchResponse {
  
  @Property(name: 'relatedPosts')
  List<ForumPostResponse> relatedPosts = [];
  

  @Property(name: 'authors')
  List<UserGeneralUser> authors = [];
  

  @Property(name: 'groups')
  List<GroupsV2GroupResponse> groups = [];
  

  @Property(name: 'searchedTags')
  List<TagsModelsContractsTagResponse> searchedTags = [];
  

  @Property(name: 'polls')
  List<ForumPollResponse> polls = [];
  

  @Property(name: 'recruitmentDetails')
  List<ForumForumRecruitmentDetail> recruitmentDetails = [];
  

  @Property(name: 'availablePages')
  int availablePages = null;
  

  @Property(name: 'results')
  List<ForumPostResponse> results = [];
  

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
  
  ForumPostSearchResponse();

  @override
  String toString()  {
    return 'ForumPostSearchResponse[relatedPosts=$relatedPosts, authors=$authors, groups=$groups, searchedTags=$searchedTags, polls=$polls, recruitmentDetails=$recruitmentDetails, availablePages=$availablePages, results=$results, totalResults=$totalResults, hasMore=$hasMore, query=$query, replacementContinuationToken=$replacementContinuationToken, useTotalResults=$useTotalResults, ]';
  }
}

