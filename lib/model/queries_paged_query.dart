part of destiny2_api.api;

@Entity()
class QueriesPagedQuery {
  
  @Property(name: 'itemsPerPage')
  int itemsPerPage = null;
  

  @Property(name: 'currentPage')
  int currentPage = null;
  

  @Property(name: 'requestContinuationToken')
  String requestContinuationToken = null;
  
  QueriesPagedQuery();

  @override
  String toString()  {
    return 'QueriesPagedQuery[itemsPerPage=$itemsPerPage, currentPage=$currentPage, requestContinuationToken=$requestContinuationToken, ]';
  }
}

