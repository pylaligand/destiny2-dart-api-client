part of destiny2_api.api;



class Destiny2Api {
  final ApiClient apiClient;

  Destiny2Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns the action token if user approves the request.
  Future<InlineResponse20054> destiny2AwaGetActionToken(String correlationId) async {
    Object postBody = null;

    // verify required params are set
    if(correlationId == null) {
     throw new ApiException(400, "Missing required param: correlationId");
    }

    // create path and map variables
    String path = "/Destiny2/Awa/GetActionToken/{correlationId}/".replaceAll("{format}","json").replaceAll("{" + "correlationId" + "}", correlationId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20054') as InlineResponse20054 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Initialize a request to perform an advanced write action.
  Future<InlineResponse20053> destiny2AwaInitializeRequest() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Awa/Initialize/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20053') as InlineResponse20053 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Provide the result of the user interaction. Called by the Bungie Destiny App to approve or reject a request.
  Future<InlineResponse20016> destiny2AwaProvideAuthorizationResult() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Awa/AwaProvideAuthorizationResult/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Equip an item. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline.
  Future<InlineResponse20016> destiny2EquipItem() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/EquipItem/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Equip a list of items by itemInstanceIds. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Any items not found on your character will be ignored.
  Future<InlineResponse20039> destiny2EquipItems() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/EquipItems/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20039') as InlineResponse20039 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets activity history stats for indicated character.
  Future<InlineResponse20048> destiny2GetActivityHistory(int characterId, int destinyMembershipId, int membershipType, { int count, int mode, int page }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20048') as InlineResponse20048 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns character information for the supplied character.
  Future<InlineResponse20034> destiny2GetCharacter(int characterId, int destinyMembershipId, int membershipType, { List<DestinyDestinyComponentType> components }) async {
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
    String path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/Character/{characterId}/".replaceAll("{format}","json").replaceAll("{" + "characterId" + "}", characterId.toString()).replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20034') as InlineResponse20034 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets aggregated stats for a clan using the same categories as the clan leaderboards. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20044> destiny2GetClanAggregateStats(int groupId, { String modes }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20044') as InlineResponse20044 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20043> destiny2GetClanLeaderboards(int groupId, { int maxtop, String modes, String statid }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20043') as InlineResponse20043 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns information on the weekly clan rewards and if the clan has earned them or not. Note that this will always report rewards as not redeemed.
  Future<InlineResponse20035> destiny2GetClanWeeklyRewardState(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/Destiny2/Clan/{groupId}/WeeklyRewardState/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20035') as InlineResponse20035 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets all activities the character has participated in together with aggregate statistics for those activities.
  Future<InlineResponse20050> destiny2GetDestinyAggregateActivityStats(int characterId, int destinyMembershipId, int membershipType) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20050') as InlineResponse20050 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns the static definition of an entity of the given Type and hash identifier. Examine the API Documentation for the Type Names of entities that have their own definitions. Note that the return type will always *inherit from* DestinyDefinition, but the specific type returned will be the requested entity type if it can be found. Please don&#39;t use this as a chatty alternative to the Manifest database if you require large sets of data, but for simple and one-off accesses this should be handy.
  Future<InlineResponse20031> destiny2GetDestinyEntityDefinition(String entityType, int hashIdentifier) async {
    Object postBody = null;

    // verify required params are set
    if(entityType == null) {
     throw new ApiException(400, "Missing required param: entityType");
    }
    if(hashIdentifier == null) {
     throw new ApiException(400, "Missing required param: hashIdentifier");
    }

    // create path and map variables
    String path = "/Destiny2/Manifest/{entityType}/{hashIdentifier}/".replaceAll("{format}","json").replaceAll("{" + "entityType" + "}", entityType.toString()).replaceAll("{" + "hashIdentifier" + "}", hashIdentifier.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20031') as InlineResponse20031 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns the current version of the manifest as a json object.
  Future<InlineResponse20030> destiny2GetDestinyManifest() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Manifest/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20030') as InlineResponse20030 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets historical stats for indicated character.
  Future<InlineResponse20046> destiny2GetHistoricalStats(int characterId, int destinyMembershipId, int membershipType, { DateTime dayend, DateTime daystart, List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> groups, List<DestinyHistoricalStatsDefinitionsDestinyActivityModeType> modes, int periodType }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20046') as InlineResponse20046 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets historical stats definitions.
  Future<InlineResponse20042> destiny2GetHistoricalStatsDefinition() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Stats/Definition/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20042') as InlineResponse20042 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets aggregate historical stats organized around each character for a given account.
  Future<InlineResponse20047> destiny2GetHistoricalStatsForAccount(int destinyMembershipId, int membershipType, { List<DestinyHistoricalStatsDefinitionsDestinyStatsGroupType> groups }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20047') as InlineResponse20047 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Retrieve the details of an instanced Destiny Item. An instanced Destiny item is one with an ItemInstanceId. Non-instanced items, such as materials, have no useful instance-specific details and thus are not queryable here.
  Future<InlineResponse20036> destiny2GetItem(int destinyMembershipId, int itemInstanceId, int membershipType, { List<DestinyDestinyComponentType> components }) async {
    Object postBody = null;

    // verify required params are set
    if(destinyMembershipId == null) {
     throw new ApiException(400, "Missing required param: destinyMembershipId");
    }
    if(itemInstanceId == null) {
     throw new ApiException(400, "Missing required param: itemInstanceId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/Item/{itemInstanceId}/".replaceAll("{format}","json").replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "itemInstanceId" + "}", itemInstanceId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint has not yet been implemented. It is being returned for a preview of future functionality, and for public comment/suggestion/preparation.
  Future<InlineResponse20043> destiny2GetLeaderboards(int destinyMembershipId, int membershipType, { int maxtop, String modes, String statid }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20043') as InlineResponse20043 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets leaderboards with the signed in user&#39;s friends and the supplied destinyMembershipId as the focus. PREVIEW: This endpoint is still in beta, and may experience rough edges. The schema is in final form, but there may be bugs that prevent desirable operation.
  Future<InlineResponse20043> destiny2GetLeaderboardsForCharacter(int characterId, int destinyMembershipId, int membershipType, { int maxtop, String modes, String statid }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20043') as InlineResponse20043 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets the available post game carnage report for the activity ID.
  Future<InlineResponse20041> destiny2GetPostGameCarnageReport(int activityId) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }

    // create path and map variables
    String path = "/Destiny2/Stats/PostGameCarnageReport/{activityId}/".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20041') as InlineResponse20041 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns Destiny Profile information for the supplied membership.
  Future<InlineResponse20033> destiny2GetProfile(int destinyMembershipId, int membershipType, { List<DestinyDestinyComponentType> components }) async {
    Object postBody = null;

    // verify required params are set
    if(destinyMembershipId == null) {
     throw new ApiException(400, "Missing required param: destinyMembershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/Destiny2/{membershipType}/Profile/{destinyMembershipId}/".replaceAll("{format}","json").replaceAll("{" + "destinyMembershipId" + "}", destinyMembershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20033') as InlineResponse20033 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets custom localized content for the milestone of the given hash, if it exists.
  Future<InlineResponse20051> destiny2GetPublicMilestoneContent(int milestoneHash) async {
    Object postBody = null;

    // verify required params are set
    if(milestoneHash == null) {
     throw new ApiException(400, "Missing required param: milestoneHash");
    }

    // create path and map variables
    String path = "/Destiny2/Milestones/{milestoneHash}/Content/".replaceAll("{format}","json").replaceAll("{" + "milestoneHash" + "}", milestoneHash.toString());

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
  /// 
  ///
  /// Gets public information about currently available Milestones.
  Future<InlineResponse20052> destiny2GetPublicMilestones() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Milestones/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20052') as InlineResponse20052 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets details about unique weapon usage, including all exotic weapons.
  Future<InlineResponse20049> destiny2GetUniqueWeaponHistory(int characterId, int destinyMembershipId, int membershipType) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20049') as InlineResponse20049 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the details of a specific Vendor.
  Future<InlineResponse20038> destiny2GetVendor(int characterId, int destinyMembershipId, int membershipType, int vendorHash, { List<DestinyDestinyComponentType> components }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20038') as InlineResponse20038 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get currently available vendors from the list of vendors that can possibly have rotating inventory. Note that this does not include things like preview vendors and vendors-as-kiosks, neither of whom have rotating/dynamic inventories. Use their definitions as-is for those.
  Future<InlineResponse20037> destiny2GetVendors(int characterId, int destinyMembershipId, int membershipType, { List<DestinyDestinyComponentType> components }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20037') as InlineResponse20037 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Insert a plug into a socketed item. I know how it sounds, but I assure you it&#39;s much more G-rated than you might be guessing. We haven&#39;t decided yet whether this will be able to insert plugs that have side effects, but if we do it will require special scope permission for an application attempting to do so. You must have a valid Destiny Account, and either be in a social space, in orbit, or offline. Request must include proof of permission for &#39;InsertPlugs&#39; from the account owner.
  Future<InlineResponse20040> destiny2InsertSocketPlug() async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20040') as InlineResponse20040 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Extract an item from the Postmaster, with whatever implications that may entail. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it&#39;s an instanced item.
  Future<InlineResponse20016> destiny2PullFromPostmaster() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/PullFromPostmaster/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Report a player that you met in an activity that was engaging in ToS-violating activities. Both you and the offending player must have played in the activityId passed in. Please use this judiciously and only when you have strong suspicions of violation, pretty please.
  Future<InlineResponse20016> destiny2ReportOffensivePostGameCarnageReportPlayer(int activityId) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }

    // create path and map variables
    String path = "/Destiny2/Stats/PostGameCarnageReport/{activityId}/Report/".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a page list of Destiny items.
  Future<InlineResponse20045> destiny2SearchDestinyEntities(String searchTerm, String type, { int page }) async {
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
      return apiClient.deserialize(response.body, 'InlineResponse20045') as InlineResponse20045 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a list of Destiny memberships given a full Gamertag or PSN ID.
  Future<InlineResponse20032> destiny2SearchDestinyPlayer(String displayName, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(displayName == null) {
     throw new ApiException(400, "Missing required param: displayName");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/Destiny2/SearchDestinyPlayer/{membershipType}/{displayName}/".replaceAll("{format}","json").replaceAll("{" + "displayName" + "}", displayName.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20032') as InlineResponse20032 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Set the Lock State for an instanced item. You must have a valid Destiny Account.
  Future<InlineResponse20016> destiny2SetItemLockState() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/SetLockState/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Transfer an item to/from your vault. You must have a valid Destiny account. You must also pass BOTH a reference AND an instance ID if it&#39;s an instanced item. itshappening.gif
  Future<InlineResponse20016> destiny2TransferItem() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Destiny2/Actions/Items/TransferItem/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
}
