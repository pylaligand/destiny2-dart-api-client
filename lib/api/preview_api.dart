part of destiny2_api.api;



class PreviewApi {
  final ApiClient apiClient;

  PreviewApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20048> destiny2GetClanAggregateStats(int groupId, { String modes }) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/Destiny2/Stats/AggregateClanStats/{groupId}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(modes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "modes", modes));
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
      return apiClient.deserialize(response.body, 'InlineResponse20048') as InlineResponse20048 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20047> destiny2GetClanLeaderboards(int groupId, { int maxtop, String modes, String statid }) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/Destiny2/Stats/Leaderboards/Clans/{groupId}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxtop != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxtop", maxtop));
    }
    if(modes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "modes", modes));
    }
    if(statid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "statid", statid));
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
      return apiClient.deserialize(response.body, 'InlineResponse20047') as InlineResponse20047 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment/suggestion/preparation.
  Future<InlineResponse20047> destiny2GetLeaderboards(int destinyMembershipId, int membershipType, { int maxtop, String modes, String statid }) async {
    Object postBody = null;

    // verify required params are set
    if(destinyMembershipId == null) {
     throw new ApiException(400, "Missing required param: destinyMembershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/Leaderboards/".replaceAll("{format}","json").replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxtop != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxtop", maxtop));
    }
    if(modes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "modes", modes));
    }
    if(statid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "statid", statid));
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
      return apiClient.deserialize(response.body, 'InlineResponse20047') as InlineResponse20047 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20047> destiny2GetLeaderboardsForCharacter(int characterId, int destinyMembershipId, int membershipType, { int maxtop, String modes, String statid }) async {
    Object postBody = null;

    // verify required params are set
    if(characterId == null) {
     throw new ApiException(400, "Missing required param: characterId");
    }
    if(destinyMembershipId == null) {
     throw new ApiException(400, "Missing required param: destinyMembershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/Destiny2/Stats/Leaderboards/{membershipType}/{destinyMembershipId}/{characterId}/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxtop != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "maxtop", maxtop));
    }
    if(modes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "modes", modes));
    }
    if(statid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "statid", statid));
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
      return apiClient.deserialize(response.body, 'InlineResponse20047') as InlineResponse20047 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Insert a plug into a socketed item. I know how it sounds, but I assure you it&#39;s much more G-rated than you might be guessing. We haven&#39;t decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Request must include proof of permission for &#39;InsertPlugs&#39; from the account owner.
  Future<InlineResponse20044> destiny2InsertSocketPlug() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/InsertSocketPlug/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20044') as InlineResponse20044 ;
    } else {
      return null;
    }
  }
}
