part of destiny2_api.api;



class ContentApi {
  final ApiClient apiClient;

  ContentApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// Returns a content item referenced by id
  Future<InlineResponse2008> contentGetContentById(int id, String locale, { bool head }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(locale == null) {
     throw new ApiException(400, "Missing required param: locale");
    }

    // create path and map variables
    String path = "/Content/GetContentById/{id}/{locale}/".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString()).replaceAll("{" + "locale" + "}", locale.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(head != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "head", head));
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
  /// Returns the newest item that matches a given tag and Content Type.
  Future<InlineResponse2008> contentGetContentByTagAndType(String locale, String tag, String type, { bool head }) async {
    Object postBody = null;

    // verify required params are set
    if(locale == null) {
     throw new ApiException(400, "Missing required param: locale");
    }
    if(tag == null) {
     throw new ApiException(400, "Missing required param: tag");
    }
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/Content/GetContentByTagAndType/{tag}/{type}/{locale}/".replaceAll("{format}","json").replaceAll("{" + "locale" + "}", locale.toString()).replaceAll("{" + "tag" + "}", tag.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(head != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "head", head));
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
  /// Gets an object describing a particular variant of content.
  Future<InlineResponse2007> contentGetContentType(String type) async {
    Object postBody = null;

    // verify required params are set
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/Content/GetContentType/{type}/".replaceAll("{format}","json").replaceAll("{" + "type" + "}", type.toString());

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
  /// Searches for Content Items that match the given Tag and Content Type.
  Future<InlineResponse2009> contentSearchContentByTagAndType(String locale, String tag, String type, { int currentpage, bool head, int itemsperpage }) async {
    Object postBody = null;

    // verify required params are set
    if(locale == null) {
     throw new ApiException(400, "Missing required param: locale");
    }
    if(tag == null) {
     throw new ApiException(400, "Missing required param: tag");
    }
    if(type == null) {
     throw new ApiException(400, "Missing required param: type");
    }

    // create path and map variables
    String path = "/Content/SearchContentByTagAndType/{tag}/{type}/{locale}/".replaceAll("{format}","json").replaceAll("{" + "locale" + "}", locale.toString()).replaceAll("{" + "tag" + "}", tag.toString()).replaceAll("{" + "type" + "}", type.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(currentpage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "currentpage", currentpage));
    }
    if(head != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "head", head));
    }
    if(itemsperpage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "itemsperpage", itemsperpage));
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
      return apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// Gets content based on querystring information passed in. Provides basic search and text search capabilities.
  Future<InlineResponse2009> contentSearchContentWithText(String locale, { String ctype, int currentpage, bool head, String searchtext, String source, String tag }) async {
    Object postBody = null;

    // verify required params are set
    if(locale == null) {
     throw new ApiException(400, "Missing required param: locale");
    }

    // create path and map variables
    String path = "/Content/Search/{locale}/".replaceAll("{format}","json").replaceAll("{" + "locale" + "}", locale.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ctype != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ctype", ctype));
    }
    if(currentpage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "currentpage", currentpage));
    }
    if(head != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "head", head));
    }
    if(searchtext != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "searchtext", searchtext));
    }
    if(source != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "source", source));
    }
    if(tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
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
      return apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
}
