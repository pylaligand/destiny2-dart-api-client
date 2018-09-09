part of destiny2_api.api;



class TrendingApi {
  final ApiClient apiClient;

  TrendingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns trending items for Bungie.net, collapsed into the first page of items per category. For pagination within a category, call GetTrendingCategory.
  Future<InlineResponse20062> trendingGetTrendingCategories() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/Trending/Categories/".replaceAll("{format}","json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20062') as InlineResponse20062 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns paginated lists of trending items for a category.
  Future<InlineResponse20063> trendingGetTrendingCategory(String categoryId, int pageNumber) async {
    Object postBody = null;

    // verify required params are set
    if(categoryId == null) {
     throw new ApiException(400, "Missing required param: categoryId");
    }
    if(pageNumber == null) {
     throw new ApiException(400, "Missing required param: pageNumber");
    }

    // create path and map variables
    String path = "/Trending/Categories/{categoryId}/{pageNumber}/".replaceAll("{format}","json").replaceAll("{" + "categoryId" + "}", categoryId.toString()).replaceAll("{" + "pageNumber" + "}", pageNumber.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20063') as InlineResponse20063 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Returns the detailed results for a specific trending entry. Note that trending entries are uniquely identified by a combination of *both* the TrendingEntryType *and* the identifier: the identifier alone is not guaranteed to be globally unique.
  Future<InlineResponse20064> trendingGetTrendingEntryDetail(String identifier, int trendingEntryType) async {
    Object postBody = null;

    // verify required params are set
    if(identifier == null) {
     throw new ApiException(400, "Missing required param: identifier");
    }
    if(trendingEntryType == null) {
     throw new ApiException(400, "Missing required param: trendingEntryType");
    }

    // create path and map variables
    String path = "/Trending/Details/{trendingEntryType}/{identifier}/".replaceAll("{format}","json").replaceAll("{" + "identifier" + "}", identifier.toString()).replaceAll("{" + "trendingEntryType" + "}", trendingEntryType.toString());

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
      return apiClient.deserialize(response.body, 'InlineResponse20064') as InlineResponse20064 ;
    } else {
      return null;
    }
  }
}
