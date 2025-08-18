abstract class NewsEvent {}

// class getNewsEvent extends NewsEvent {}

class FetchHeadlinesEvent extends NewsEvent {}

class FetchEverythingEvent extends NewsEvent{}

class SearchNewsEvent extends NewsEvent {
  String query;
 SearchNewsEvent ({required this.query});
}

