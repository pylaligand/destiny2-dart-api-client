part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyEntitySearchResult {
  /* A list of suggested words that might make for better search results, based on the text searched for. */
  @Property(name: 'suggestedWords')
  List<String> suggestedWords = [];
  
/* The items found that are matches/near matches for the searched-for term, sorted by something vaguely resembling \"relevance\". Hopefully this will get better in the future. */
  @Property(name: 'results')
  SearchResultOfDestinyEntitySearchResultItem results = null;
  
  DestinyDefinitionsDestinyEntitySearchResult();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyEntitySearchResult[suggestedWords=$suggestedWords, results=$results, ]';
  }
}

