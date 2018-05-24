part of destiny2_api.api;



class FireteamApi {
  final ApiClient apiClient;

  FireteamApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets a count of all active non-public fireteams for the specified clan. Maximum value returned is 25.
  Future<InlineResponse20016> fireteamGetActivePrivateClanFireteamCount(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/Fireteam/Clan/{groupId}/ActiveCount/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a listing of all of this clan&#39;s fireteams that are have available slots. Caller is not checked for join criteria so caching is maximized.
  Future<InlineResponse20060> fireteamGetAvailableClanFireteams(int activityType, int dateRange, int groupId, int page, int platform, int publicOnly, int slotFilter) async {
    Object postBody = null;

    // verify required params are set
    if(activityType == null) {
     throw new ApiException(400, "Missing required param: activityType");
    }
    if(dateRange == null) {
     throw new ApiException(400, "Missing required param: dateRange");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(platform == null) {
     throw new ApiException(400, "Missing required param: platform");
    }
    if(publicOnly == null) {
     throw new ApiException(400, "Missing required param: publicOnly");
    }
    if(slotFilter == null) {
     throw new ApiException(400, "Missing required param: slotFilter");
    }

    // create path and map variables
    String path = "/Fireteam/Clan/{groupId}/Available/{platform}/{activityType}/{dateRange}/{slotFilter}/{publicOnly}/{page}/".replaceAll("{format}","json").replaceAll("{" + "activityType" + "}", activityType.toString()).replaceAll("{" + "dateRange" + "}", dateRange.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "platform" + "}", platform.toString()).replaceAll("{" + "publicOnly" + "}", publicOnly.toString()).replaceAll("{" + "slotFilter" + "}", slotFilter.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20060') as InlineResponse20060 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a specific clan fireteam.
  Future<InlineResponse20062> fireteamGetClanFireteam(int fireteamId, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(fireteamId == null) {
     throw new ApiException(400, "Missing required param: fireteamId");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/Fireteam/Clan/{groupId}/Summary/{fireteamId}/".replaceAll("{format}","json").replaceAll("{" + "fireteamId" + "}", fireteamId.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20062') as InlineResponse20062 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a listing of all clan fireteams that caller is an applicant, a member, or an alternate of.
  Future<InlineResponse20061> fireteamGetMyClanFireteams(int groupId, bool includeClosed, int page, int platform, { bool groupFilter }) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(includeClosed == null) {
     throw new ApiException(400, "Missing required param: includeClosed");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(platform == null) {
     throw new ApiException(400, "Missing required param: platform");
    }

    // create path and map variables
    String path = "/Fireteam/Clan/{groupId}/My/{platform}/{includeClosed}/{page}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "includeClosed" + "}", includeClosed.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "platform" + "}", platform.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(groupFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupFilter", groupFilter));
    }
    
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
      return apiClient.deserialize(response.body, 'InlineResponse20061') as InlineResponse20061 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a listing of all public fireteams starting now with open slots. Caller is not checked for join criteria so caching is maximized.
  Future<InlineResponse20060> fireteamSearchPublicAvailableClanFireteams(int activityType, int dateRange, int page, int platform, int slotFilter) async {
    Object postBody = null;

    // verify required params are set
    if(activityType == null) {
     throw new ApiException(400, "Missing required param: activityType");
    }
    if(dateRange == null) {
     throw new ApiException(400, "Missing required param: dateRange");
    }
    if(page == null) {
     throw new ApiException(400, "Missing required param: page");
    }
    if(platform == null) {
     throw new ApiException(400, "Missing required param: platform");
    }
    if(slotFilter == null) {
     throw new ApiException(400, "Missing required param: slotFilter");
    }

    // create path and map variables
    String path = "/Fireteam/Search/Available/{platform}/{activityType}/{dateRange}/{slotFilter}/{page}/".replaceAll("{format}","json").replaceAll("{" + "activityType" + "}", activityType.toString()).replaceAll("{" + "dateRange" + "}", dateRange.toString()).replaceAll("{" + "page" + "}", page.toString()).replaceAll("{" + "platform" + "}", platform.toString()).replaceAll("{" + "slotFilter" + "}", slotFilter.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20060') as InlineResponse20060 ;
    } else {
      return null;
    }
  }
}
