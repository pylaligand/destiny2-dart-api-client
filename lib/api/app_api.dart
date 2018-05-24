part of destiny2_api.api;



class AppApi {
  final ApiClient apiClient;

  AppApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Get API usage by application for time frame specified. You can go as far back as 30 days ago, and can ask for up to a 48 hour window of time in a single request. You must be authenticated with at least the ReadUserData permission to access this endpoint.
  Future<InlineResponse200> appGetApplicationApiUsage(int applicationId, { DateTime end, DateTime start }) async {
    Object postBody = null;

    // verify required params are set
    if(applicationId == null) {
     throw new ApiException(400, "Missing required param: applicationId");
    }

    // create path and map variables
    String path = "/App/ApiUsage/{applicationId}/".replaceAll("{format}","json").replaceAll("{" + "applicationId" + "}", applicationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(end != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end", end));
    }
    if(start != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start", start));
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
      return apiClient.deserialize(response.body, 'InlineResponse200') as InlineResponse200 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Get list of applications created by Bungie.
  Future<InlineResponse2001> appGetBungieApplications() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/App/FirstParty/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse2001') as InlineResponse2001 ;
    } else {
      return null;
    }
  }
}
