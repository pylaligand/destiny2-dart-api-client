part of destiny2_api.api;



class GroupV2Api {
  final ApiClient apiClient;

  GroupV2Api([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// An administrative method to allow the founder of a group or clan to give up their position to another admin permanently.
  Future<InlineResponse20014> groupV2AbdicateFoundership(int founderIdNew, int groupId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(founderIdNew == null) {
     throw new ApiException(400, "Missing required param: founderIdNew");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Admin/AbdicateFoundership/{membershipType}/{founderIdNew}/".replaceAll("{format}","json").replaceAll("{" + "founderIdNew" + "}", founderIdNew.toString()).replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20014') as InlineResponse20014 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Add a new optional conversation/chat channel. Requires admin permissions to the group.
  Future<InlineResponse2007> groupV2AddOptionalConversation(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/OptionalConversations/Add/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Approve all of the pending users for the given group.
  Future<InlineResponse20025> groupV2ApproveAllPending(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/ApproveAll/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20025') as InlineResponse20025 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Approve all of the pending users for the given group.
  Future<InlineResponse20025> groupV2ApprovePendingForList(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/ApproveList/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20025') as InlineResponse20025 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Bans the requested member from the requested group for the specified period of time.
  Future<InlineResponse20015> groupV2BanMember(int groupId, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Ban/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
  /// Create a new group.
  Future<InlineResponse20019> groupV2CreateGroup() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/GroupV2/Create/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20019') as InlineResponse20019 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deny all of the pending users for the given group.
  Future<InlineResponse20025> groupV2DenyAllPending(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/DenyAll/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20025') as InlineResponse20025 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Deny all of the pending users for the given group that match the passed-in .
  Future<InlineResponse20025> groupV2DenyPendingForList(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/DenyList/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20025') as InlineResponse20025 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Edit an existing group&#39;s clan banner. You must have suitable permissions in the group to perform this operation. All fields are required.
  Future<InlineResponse20015> groupV2EditClanBanner(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/EditClanBanner/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
  /// Edit group options only available to a founder. You must have suitable permissions in the group to perform this operation.
  Future<InlineResponse20015> groupV2EditFounderOptions(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/EditFounderOptions/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
  /// Edit an existing group. You must have suitable permissions in the group to perform this operation. This latest revision will only edit the fields you pass in - pass null for properties you want to leave unaltered.
  Future<InlineResponse20015> groupV2EditGroup(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Edit/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
  /// Edit the membership type of a given member. You must have suitable permissions in the group to perform this operation.
  Future<InlineResponse20015> groupV2EditGroupMembership(int groupId, int membershipId, int membershipType, int memberType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }
    if(memberType == null) {
     throw new ApiException(400, "Missing required param: memberType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/{membershipType}/{membershipId}/SetMembershipType/{memberType}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString()).replaceAll("{" + "memberType" + "}", memberType.toString());

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
  /// Edit the settings of an optional conversation/chat channel. Requires admin permissions to the group.
  Future<InlineResponse2007> groupV2EditOptionalConversation(int conversationId, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(conversationId == null) {
     throw new ApiException(400, "Missing required param: conversationId");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/OptionalConversations/Edit/{conversationId}/".replaceAll("{format}","json").replaceAll("{" + "conversationId" + "}", conversationId.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the list of members in a given group who are of admin level or higher.
  Future<InlineResponse20020> groupV2GetAdminsAndFounderOfGroup(int currentpage, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(currentpage == null) {
     throw new ApiException(400, "Missing required param: currentpage");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/AdminsAndFounder/".replaceAll("{format}","json").replaceAll("{" + "currentpage" + "}", currentpage.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20020') as InlineResponse20020 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a list of all available group avatars for the signed-in user.
  Future<InlineResponse20012> groupV2GetAvailableAvatars() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/GroupV2/GetAvailableAvatars/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20012') as InlineResponse20012 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns a list of all available group themes.
  Future<InlineResponse20013> groupV2GetAvailableThemes() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/GroupV2/GetAvailableThemes/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20013') as InlineResponse20013 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the list of banned members in a given group. Only accessible to group Admins and above. Not applicable to all groups. Check group features.
  Future<InlineResponse20022> groupV2GetBannedMembersOfGroup(int currentpage, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(currentpage == null) {
     throw new ApiException(400, "Missing required param: currentpage");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Banned/".replaceAll("{format}","json").replaceAll("{" + "currentpage" + "}", currentpage.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20022') as InlineResponse20022 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get information about a specific group of the given ID.
  Future<InlineResponse20017> groupV2GetGroup(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20017') as InlineResponse20017 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get information about a specific group with the given name and type.
  Future<InlineResponse20017> groupV2GetGroupByName(String groupName, int groupType) async {
    Object postBody = null;

    // verify required params are set
    if(groupName == null) {
     throw new ApiException(400, "Missing required param: groupName");
    }
    if(groupType == null) {
     throw new ApiException(400, "Missing required param: groupType");
    }

    // create path and map variables
    String path = "/GroupV2/Name/{groupName}/{groupType}/".replaceAll("{format}","json").replaceAll("{" + "groupName" + "}", groupName.toString()).replaceAll("{" + "groupType" + "}", groupType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20017') as InlineResponse20017 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets a list of available optional conversation channels and their settings.
  Future<InlineResponse20018> groupV2GetGroupOptionalConversations(int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/OptionalConversations/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20018') as InlineResponse20018 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get information about the groups that a given member has joined.
  Future<InlineResponse20026> groupV2GetGroupsForMember(int filter, int groupType, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(filter == null) {
     throw new ApiException(400, "Missing required param: filter");
    }
    if(groupType == null) {
     throw new ApiException(400, "Missing required param: groupType");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/User/{membershipType}/{membershipId}/{filter}/{groupType}/".replaceAll("{format}","json").replaceAll("{" + "filter" + "}", filter.toString()).replaceAll("{" + "groupType" + "}", groupType.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20026') as InlineResponse20026 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the list of users who have been invited into the group.
  Future<InlineResponse20024> groupV2GetInvitedIndividuals(int currentpage, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(currentpage == null) {
     throw new ApiException(400, "Missing required param: currentpage");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/InvitedIndividuals/".replaceAll("{format}","json").replaceAll("{" + "currentpage" + "}", currentpage.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20024') as InlineResponse20024 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the list of members in a given group.
  Future<InlineResponse20020> groupV2GetMembersOfGroup(int currentpage, int groupId, { int memberType, String nameSearch }) async {
    Object postBody = null;

    // verify required params are set
    if(currentpage == null) {
     throw new ApiException(400, "Missing required param: currentpage");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/".replaceAll("{format}","json").replaceAll("{" + "currentpage" + "}", currentpage.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(memberType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "memberType", memberType));
    }
    if(nameSearch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "nameSearch", nameSearch));
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
      return apiClient.deserialize(response.body, 'InlineResponse20020') as InlineResponse20020 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get the list of users who are awaiting a decision on their application to join a given group. Modified to include application info.
  Future<InlineResponse20024> groupV2GetPendingMemberships(int currentpage, int groupId) async {
    Object postBody = null;

    // verify required params are set
    if(currentpage == null) {
     throw new ApiException(400, "Missing required param: currentpage");
    }
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/Pending/".replaceAll("{format}","json").replaceAll("{" + "currentpage" + "}", currentpage.toString()).replaceAll("{" + "groupId" + "}", groupId.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20024') as InlineResponse20024 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get information about the groups that a given member has applied to or been invited to.
  Future<InlineResponse20027> groupV2GetPotentialGroupsForMember(int filter, int groupType, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(filter == null) {
     throw new ApiException(400, "Missing required param: filter");
    }
    if(groupType == null) {
     throw new ApiException(400, "Missing required param: groupType");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/User/Potential/{membershipType}/{membershipId}/{filter}/{groupType}/".replaceAll("{format}","json").replaceAll("{" + "filter" + "}", filter.toString()).replaceAll("{" + "groupType" + "}", groupType.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20027') as InlineResponse20027 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets groups recommended for you based on the groups to whom those you follow belong.
  Future<InlineResponse20016> groupV2GetRecommendedGroups() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/GroupV2/Recommended/".replaceAll("{format}","json");

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
  /// Gets the state of the user&#39;s clan invite preferences for a particular membership type - true if they wish to be invited to clans, false otherwise.
  Future<InlineResponse20014> groupV2GetUserClanInviteSetting(int mType) async {
    Object postBody = null;

    // verify required params are set
    if(mType == null) {
     throw new ApiException(400, "Missing required param: mType");
    }

    // create path and map variables
    String path = "/GroupV2/GetUserClanInviteSetting/{mType}/".replaceAll("{format}","json").replaceAll("{" + "mType" + "}", mType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20014') as InlineResponse20014 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Search for Groups.
  Future<InlineResponse20016> groupV2GroupSearch() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/GroupV2/Search/".replaceAll("{format}","json");

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
  /// Invite a user to join this group.
  Future<InlineResponse20023> groupV2IndividualGroupInvite(int groupId, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/IndividualInvite/{membershipType}/{membershipId}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20023') as InlineResponse20023 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Cancels a pending invitation to join a group.
  Future<InlineResponse20023> groupV2IndividualGroupInviteCancel(int groupId, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/IndividualInviteCancel/{membershipType}/{membershipId}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20023') as InlineResponse20023 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Kick a member from the given group, forcing them to reapply if they wish to re-join the group. You must have suitable permissions in the group to perform this operation.
  Future<InlineResponse20021> groupV2KickMember(int groupId, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Kick/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20021') as InlineResponse20021 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Request permission to join the given group.
  Future<InlineResponse20023> groupV2RequestGroupMembership(int groupId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/Apply/{membershipType}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20023') as InlineResponse20023 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Rescind your application to join the given group or leave the group if you are already a member..
  Future<InlineResponse20021> groupV2RescindGroupMembership(int groupId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/Rescind/{membershipType}/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20021') as InlineResponse20021 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Sets the state of the user&#39;s clan invite preferences - true if they wish to be invited to clans, false otherwise.
  Future<InlineResponse20015> groupV2SetUserClanInviteSetting(bool allowInvites, int mType) async {
    Object postBody = null;

    // verify required params are set
    if(allowInvites == null) {
     throw new ApiException(400, "Missing required param: allowInvites");
    }
    if(mType == null) {
     throw new ApiException(400, "Missing required param: mType");
    }

    // create path and map variables
    String path = "/GroupV2/SetUserClanInviteSetting/{mType}/{allowInvites}/".replaceAll("{format}","json").replaceAll("{" + "allowInvites" + "}", allowInvites.toString()).replaceAll("{" + "mType" + "}", mType.toString());

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
  /// Unbans the requested member, allowing them to re-apply for membership.
  Future<InlineResponse20015> groupV2UnbanMember(int groupId, int membershipId, int membershipType) async {
    Object postBody = null;

    // verify required params are set
    if(groupId == null) {
     throw new ApiException(400, "Missing required param: groupId");
    }
    if(membershipId == null) {
     throw new ApiException(400, "Missing required param: membershipId");
    }
    if(membershipType == null) {
     throw new ApiException(400, "Missing required param: membershipType");
    }

    // create path and map variables
    String path = "/GroupV2/{groupId}/Members/{membershipType}/{membershipId}/Unban/".replaceAll("{format}","json").replaceAll("{" + "groupId" + "}", groupId.toString()).replaceAll("{" + "membershipId" + "}", membershipId.toString()).replaceAll("{" + "membershipType" + "}", membershipType.toString());

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
}
