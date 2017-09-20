part of destiny2_api.api;



class CommunityContentApi {
  final ApiClient apiClient;

  CommunityContentApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns community content.
  Future<InlineResponse2006> communityContentGetCommunityContent(int mediaFilter, int page, int sort) async {
    Object postBody = null;

    // verify required params are set
    if(mediaFilter == null) {
     throw new ApiException(400, "Missing required param: mediaFilter");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/CommunityContent/Get/{sort}/{mediaFilter}/{page}/".replaceAll("{format}","json").replaceAll("{" + "mediaFilter" + "}", mediaFilter.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "sort" + "}", sort.toString());

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
  /// Returns info about community members who are live streaming.
  Future<InlineResponse20050> communityContentGetCommunityLiveStatuses(int page, int partnershipType, int sort, { int modeHash, String streamLocale }) async {
    Object postBody = null;

    // verify required params are set
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(partnershipType == null) {
     throw new ApiException(400, "Missing required param: partnershipType");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/CommunityContent/Live/All/{partnershipType}/{sort}/{page}/".replaceAll("{format}","json").replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "partnershipType" + "}", partnershipType.toString()).replaceAll("{" + "sort" + "}", sort.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(modeHash != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "modeHash", modeHash));
    }
    if(streamLocale != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "streamLocale", streamLocale));
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
      return apiClient.deserialize(response.body, 'InlineResponse20050') as InlineResponse20050 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns info about community members who are live streaming in your clans.
  Future<InlineResponse20050> communityContentGetCommunityLiveStatusesForClanmates(int page, int partnershipType, int sort) async {
    Object postBody = null;

    // verify required params are set
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(partnershipType == null) {
     throw new ApiException(400, "Missing required param: partnershipType");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/CommunityContent/Live/Clan/{partnershipType}/{sort}/{page}/".replaceAll("{format}","json").replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "partnershipType" + "}", partnershipType.toString()).replaceAll("{" + "sort" + "}", sort.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20050') as InlineResponse20050 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns info about community members who are live streaming among your friends.
  Future<InlineResponse20050> communityContentGetCommunityLiveStatusesForFriends(int page, int partnershipType, int sort) async {
    Object postBody = null;

    // verify required params are set
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(partnershipType == null) {
     throw new ApiException(400, "Missing required param: partnershipType");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/CommunityContent/Live/Friends/{partnershipType}/{sort}/{page}/".replaceAll("{format}","json").replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "partnershipType" + "}", partnershipType.toString()).replaceAll("{" + "sort" + "}", sort.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20050') as InlineResponse20050 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns info about Featured live streams.
  Future<InlineResponse20050> communityContentGetFeaturedCommunityLiveStatuses(int page, int partnershipType, int sort, { String streamLocale }) async {
    Object postBody = null;

    // verify required params are set
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(partnershipType == null) {
     throw new ApiException(400, "Missing required param: partnershipType");
    }
    if(sort == null) {
     throw new ApiException(400, "Missing required param: sort");
    }

    // create path and map variables
    String path = "/CommunityContent/Live/Featured/{partnershipType}/{sort}/{page}/".replaceAll("{format}","json").replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "partnershipType" + "}", partnershipType.toString()).replaceAll("{" + "sort" + "}", sort.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(streamLocale != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "streamLocale", streamLocale));
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
      return apiClient.deserialize(response.body, 'InlineResponse20050') as InlineResponse20050 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets the Live Streaming status of a particular Account and Membership Type.
  Future<InlineResponse20051> communityContentGetStreamingStatusForMember(int membershipId, int membershipType, int partnershipType) async {
    Object postBody = null;

    // verify required params are set
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }
    if(partnershipType == null) {
     throw new ApiException(400, "Missing required param: partnershipType");
    }

    // create path and map variables
    String path = "/CommunityContent/Live/Users/{partnershipType}/{membershipType}/{membershipId}/".replaceAll("{format}","json").replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString()).replaceAll("{" + "partnershipType" + "}", partnershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20051') as InlineResponse20051 ;
    } else {
      return null;
    }
  }
}
