part of destiny2_api.api;



class PreviewApi {
  final ApiClient apiClient;

  PreviewApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Activate a Talent Node. Chill out, everyone: we haven&#39;t decided yet whether this will be able to activate nodes with costs, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not actually implemented yet, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.
  Future<InlineResponse20015> destiny2ActivateTalentNode() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/ActivateTalentNode/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20015') as InlineResponse20015 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets activity history stats for indicated character. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20045> destiny2GetActivityHistory(int characterId, int destinyMembershipId, int membershipType, { int count, int mode, int page }) async {
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
    String path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/Activities/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
    }
    if(mode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "mode", mode));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
      return apiClient.deserialize(response.body, 'InlineResponse20045') as InlineResponse20045 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20041> destiny2GetClanAggregateStats(int groupId, { String modes }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20041') as InlineResponse20041 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20040> destiny2GetClanLeaderboards(int groupId, { int maxtop, String modes, String statid }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20040') as InlineResponse20040 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets all activities the character has participated in together with aggregate statistics for those activities. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20047> destiny2GetDestinyAggregateActivityStats(int characterId, int destinyMembershipId, int membershipType) async {
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
    String path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/AggregateActivityStats/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20047') as InlineResponse20047 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets historical stats for indicated character. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20043> destiny2GetHistoricalStats(int characterId, int destinyMembershipId, int membershipType, { DateTime dayend, DateTime daystart, List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> groups, List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> modes, int periodType }) async {
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
    String path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(dayend != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "dayend", dayend));
    }
    if(daystart != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "daystart", daystart));
    }
    if(groups != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "groups", groups));
    }
    if(modes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "modes", modes));
    }
    if(periodType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "periodType", periodType));
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
      return apiClient.deserialize(response.body, 'InlineResponse20043') as InlineResponse20043 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets aggregate historical stats organized around each character for a given account. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20044> destiny2GetHistoricalStatsForAccount(int destinyMembershipId, int membershipType, { List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> groups }) async {
    Object postBody = null;

    // verify required params are set
    if(destinyMembershipId == null) {
     throw new ApiException(400, "Missing required param: destinyMembershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Stats/".replaceAll("{format}","json").replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(groups != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "groups", groups));
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
      return apiClient.deserialize(response.body, 'InlineResponse20044') as InlineResponse20044 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment/suggestion/preparation.
  Future<InlineResponse20040> destiny2GetLeaderboards(int destinyMembershipId, int membershipType, { int maxtop, String modes, String statid }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20040') as InlineResponse20040 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20040> destiny2GetLeaderboardsForCharacter(int characterId, int destinyMembershipId, int membershipType, { int maxtop, String modes, String statid }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20040') as InlineResponse20040 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets details about unique weapon usage, including all exotic weapons. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20046> destiny2GetUniqueWeaponHistory(int characterId, int destinyMembershipId, int membershipType) async {
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
    String path = "/Destiny2/{membershipType}/Account/{destinyMembershipId}/Character/{characterId}/Stats/UniqueWeapons/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20046') as InlineResponse20046 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the details of a specific Vendor. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.
  Future<InlineResponse20036> destiny2GetVendor(int characterId, int destinyMembershipId, int membershipType, int vendorHash, { List<DestinyDestinyComponentType> components }) async {
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
    if(vendorHash == null) {
     throw new ApiException(400, "Missing required param: vendorHash");
    }

    // create path and map variables
    String path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/{vendorHash}/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString()).replaceAll("{" + "vendorHash" + "}", vendorHash.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(components != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "components", components));
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
      return apiClient.deserialize(response.body, 'InlineResponse20036') as InlineResponse20036 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get currently available vendors. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.
  Future<InlineResponse20035> destiny2GetVendors(int characterId, int destinyMembershipId, int membershipType, { List<DestinyDestinyComponentType> components }) async {
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
    String path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/Vendors/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(components != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("csv", "components", components));
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
      return apiClient.deserialize(response.body, 'InlineResponse20035') as InlineResponse20035 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Insert a plug into a socketed item. I know how it sounds, but I assure you it&#39;s much more G-rated than you might be guessing. We haven&#39;t decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. PREVIEW: This service is not yet active, but we are returning the planned schema of the endpoint for review, comment, and preparation for its eventual implementation.
  Future<InlineResponse20015> destiny2InsertSocketPlug() async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20015') as InlineResponse20015 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a page list of Destiny items.
  Future<InlineResponse20042> destiny2SearchDestinyEntities(String searchTerm, String type, { int page }) async {
    Object postBody = null;

    // verify required params are set
    if(searchTerm == null) {
     throw new ApiException(400, "Missing required param: searchTerm");
    }
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/Destiny2/Armory/Search/{type}/{searchTerm}/".replaceAll("{format}","json").replaceAll("{" + "searchTerm" + "}", searchTerm.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
      return apiClient.deserialize(response.body, 'InlineResponse20042') as InlineResponse20042 ;
    } else {
      return null;
    }
  }
}
