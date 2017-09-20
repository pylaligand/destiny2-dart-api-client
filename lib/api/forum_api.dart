part of destiny2_api.api;



class ForumApi {
  final ApiClient apiClient;

  ForumApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Allows the owner of a fireteam thread to approve all joined members and start a private message conversation with them.
  Future<InlineResponse20010> forumApproveFireteamThread(int topicId) async {
    Object postBody = null;

    // verify required params are set
    if(topicId == null) {
     throw new ApiException(400, "Missing required param: topicId");
    }

    // create path and map variables
    String path = "/Forum/Recruit/Approve/{topicId}/".replaceAll("{format}","json").replaceAll("{" + "topicId" + "}", topicId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20010') as InlineResponse20010 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a listing of all topics marked as part of the core group.
  Future<InlineResponse2006> forumGetCoreTopicsPaged(int categoryFilter, int page, int quickDate, int sort, { String locales }) async {
    Object postBody = null;

    // verify required params are set
    if(categoryFilter == null) {
     throw new ApiException(400, "Missing required param: categoryFilter");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(quickDate == null) {
     throw new ApiException(400, "Missing required param: quickDate");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/Forum/GetCoreTopicsPaged/{page}/{sort}/{quickDate}/{categoryFilter}/".replaceAll("{format}","json").replaceAll("{" + "categoryFilter" + "}", categoryFilter.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "quickDate" + "}", quickDate.toString()).replaceAll("{" + "sort" + "}", sort.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(locales != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "locales", locales));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets tag suggestions based on partial text entry, matching them with other tags previously used in the forums.
  Future<InlineResponse2008> forumGetForumTagSuggestions({ String partialtag }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Forum/GetForumTagSuggestions/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(partialtag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "partialtag", partialtag));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2008') as InlineResponse2008 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets the specified forum poll.
  Future<InlineResponse2006> forumGetPoll(int topicId) async {
    Object postBody = null;

    // verify required params are set
    if(topicId == null) {
     throw new ApiException(400, "Missing required param: topicId");
    }

    // create path and map variables
    String path = "/Forum/Poll/{topicId}/".replaceAll("{format}","json").replaceAll("{" + "topicId" + "}", topicId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns the post specified and its immediate parent.
  Future<InlineResponse2006> forumGetPostAndParent(int childPostId, { String showbanned }) async {
    Object postBody = null;

    // verify required params are set
    if(childPostId == null) {
     throw new ApiException(400, "Missing required param: childPostId");
    }

    // create path and map variables
    String path = "/Forum/GetPostAndParent/{childPostId}/".replaceAll("{format}","json").replaceAll("{" + "childPostId" + "}", childPostId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(showbanned != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showbanned", showbanned));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns the post specified and its immediate parent of posts that are awaiting approval.
  Future<InlineResponse2006> forumGetPostAndParentAwaitingApproval(int childPostId, { String showbanned }) async {
    Object postBody = null;

    // verify required params are set
    if(childPostId == null) {
     throw new ApiException(400, "Missing required param: childPostId");
    }

    // create path and map variables
    String path = "/Forum/GetPostAndParentAwaitingApproval/{childPostId}/".replaceAll("{format}","json").replaceAll("{" + "childPostId" + "}", childPostId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(showbanned != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showbanned", showbanned));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a thread of posts at the given parent, optionally returning replies to those posts as well as the original parent.
  Future<InlineResponse2006> forumGetPostsThreadedPaged(bool getParentPost, int page, int pageSize, int parentPostId, int replySize, bool rootThreadMode, int sortMode, { String showbanned }) async {
    Object postBody = null;

    // verify required params are set
    if(getParentPost == null) {
     throw new ApiException(400, "Missing required param: getParentPost");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(pageSize == null) {
     throw new ApiException(400, "Missing required param: pageSize");
    }
    if(parentPostId == null) {
     throw new ApiException(400, "Missing required param: parentPostId");
    }
    if(replySize == null) {
     throw new ApiException(400, "Missing required param: replySize");
    }
    if(rootThreadMode == null) {
     throw new ApiException(400, "Missing required param: rootThreadMode");
    }
    if(sortMode == null) {
     throw new ApiException(400, "Missing required param: sortMode");
    }

    // create path and map variables
    String path = "/Forum/GetPostsThreadedPaged/{parentPostId}/{page}/{pageSize}/{replySize}/{getParentPost}/{rootThreadMode}/{sortMode}/".replaceAll("{format}","json").replaceAll("{" + "getParentPost" + "}", getParentPost.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "pageSize" + "}", pageSize.toString()).replaceAll("{" + "parentPostId" + "}", parentPostId.toString()).replaceAll("{" + "replySize" + "}", replySize.toString()).replaceAll("{" + "rootThreadMode" + "}", rootThreadMode.toString()).replaceAll("{" + "sortMode" + "}", sortMode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(showbanned != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showbanned", showbanned));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a thread of posts starting at the topicId of the input childPostId, optionally returning replies to those posts as well as the original parent.
  Future<InlineResponse2006> forumGetPostsThreadedPagedFromChild(int childPostId, int page, int pageSize, int replySize, bool rootThreadMode, int sortMode, { String showbanned }) async {
    Object postBody = null;

    // verify required params are set
    if(childPostId == null) {
     throw new ApiException(400, "Missing required param: childPostId");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(pageSize == null) {
     throw new ApiException(400, "Missing required param: pageSize");
    }
    if(replySize == null) {
     throw new ApiException(400, "Missing required param: replySize");
    }
    if(rootThreadMode == null) {
     throw new ApiException(400, "Missing required param: rootThreadMode");
    }
    if(sortMode == null) {
     throw new ApiException(400, "Missing required param: sortMode");
    }

    // create path and map variables
    String path = "/Forum/GetPostsThreadedPagedFromChild/{childPostId}/{page}/{pageSize}/{replySize}/{rootThreadMode}/{sortMode}/".replaceAll("{format}","json").replaceAll("{" + "childPostId" + "}", childPostId.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "pageSize" + "}", pageSize.toString()).replaceAll("{" + "replySize" + "}", replySize.toString()).replaceAll("{" + "rootThreadMode" + "}", rootThreadMode.toString()).replaceAll("{" + "sortMode" + "}", sortMode.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(showbanned != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showbanned", showbanned));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Allows the caller to get a list of to 25 recruitment thread summary information objects.
  Future<InlineResponse20011> forumGetRecruitmentThreadSummaries() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Forum/Recruit/Summaries/".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse20011') as InlineResponse20011 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets the post Id for the given content item&#39;s comments, if it exists.
  Future<InlineResponse2007> forumGetTopicForContent(int contentId) async {
    Object postBody = null;

    // verify required params are set
    if(contentId == null) {
     throw new ApiException(400, "Missing required param: contentId");
    }

    // create path and map variables
    String path = "/Forum/GetTopicForContent/{contentId}/".replaceAll("{format}","json").replaceAll("{" + "contentId" + "}", contentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get topics from any forum.
  Future<InlineResponse2006> forumGetTopicsPaged(int categoryFilter, int group, int page, int pageSize, int quickDate, int sort, { String locales, String tagstring }) async {
    Object postBody = null;

    // verify required params are set
    if(categoryFilter == null) {
     throw new ApiException(400, "Missing required param: categoryFilter");
    }
    if(group == null) {
     throw new ApiException(400, "Missing required param: group");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(pageSize == null) {
     throw new ApiException(400, "Missing required param: pageSize");
    }
    if(quickDate == null) {
     throw new ApiException(400, "Missing required param: quickDate");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/Forum/GetTopicsPaged/{page}/{pageSize}/{group}/{sort}/{quickDate}/{categoryFilter}/".replaceAll("{format}","json").replaceAll("{" + "categoryFilter" + "}", categoryFilter.toString()).replaceAll("{" + "group" + "}", group.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "pageSize" + "}", pageSize.toString()).replaceAll("{" + "quickDate" + "}", quickDate.toString()).replaceAll("{" + "sort" + "}", sort.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(locales != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "locales", locales));
    }
    if(tagstring != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tagstring", tagstring));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Allows a user to slot themselves into a recruitment thread fireteam slot. Returns the new state of the fireteam.
  Future<InlineResponse2009> forumJoinFireteamThread(int topicId) async {
    Object postBody = null;

    // verify required params are set
    if(topicId == null) {
     throw new ApiException(400, "Missing required param: topicId");
    }

    // create path and map variables
    String path = "/Forum/Recruit/Join/{topicId}/".replaceAll("{format}","json").replaceAll("{" + "topicId" + "}", topicId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Allows a recruitment thread owner to kick a join user from the fireteam. Returns the new state of the fireteam.
  Future<InlineResponse2009> forumKickBanFireteamApplicant(int targetMembershipId, int topicId) async {
    Object postBody = null;

    // verify required params are set
    if(targetMembershipId == null) {
     throw new ApiException(400, "Missing required param: targetMembershipId");
    }
    if(topicId == null) {
     throw new ApiException(400, "Missing required param: topicId");
    }

    // create path and map variables
    String path = "/Forum/Recruit/KickBan/{topicId}/{targetMembershipId}/".replaceAll("{format}","json").replaceAll("{" + "targetMembershipId" + "}", targetMembershipId.toString()).replaceAll("{" + "topicId" + "}", topicId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Allows a user to remove themselves from a recruitment thread fireteam slot. Returns the new state of the fireteam.
  Future<InlineResponse2009> forumLeaveFireteamThread(int topicId) async {
    Object postBody = null;

    // verify required params are set
    if(topicId == null) {
     throw new ApiException(400, "Missing required param: topicId");
    }

    // create path and map variables
    String path = "/Forum/Recruit/Leave/{topicId}/".replaceAll("{format}","json").replaceAll("{" + "topicId" + "}", topicId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
}
