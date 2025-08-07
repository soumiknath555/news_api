class SourceModels {
  String? id;
  String? name;

  SourceModels({required this.id, required this.name});

  // FROM JSON
  factory SourceModels.fromJson(Map<String, dynamic> json) {
    return SourceModels(
        id: json['id']?.toString(),
        name: json['name']
    );
  }
}

class ArticaleModels {
  SourceModels? source;
  String? author;
  String? content;
  String? description;
  String? publishedAt;
  String? title;
  String? url;
  String? urlToImage;

  ArticaleModels({
    required this.source,
    required this.author,
    required this.content,
    required this.description,
    required this.publishedAt,
    required this.title,
    required this.url,
    required this.urlToImage,
  });

  // FROM JSON
  factory ArticaleModels.fromJson(Map<String, dynamic> json) {
    return ArticaleModels(
      source: SourceModels.fromJson(json['source']),
      author: json['author'],
      content: json['content'],
      description: json['description'],
      publishedAt: json['publishedAt'],
      title: json['title'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
}

class NewsEverythings {
  List<ArticaleModels>? articles;
  String? status;
  num? totalResults;

  NewsEverythings({
    required this.articles,
    required this.status,
    required this.totalResults,
  });

  // FROM JSON
  factory NewsEverythings.fromJson(Map<String, dynamic> json) {

    List<ArticaleModels> articlesList = [];
    for (Map<String , dynamic> eachArticales in json["articles"]) {
      articlesList.add(ArticaleModels.fromJson(eachArticales));
    }

    return NewsEverythings(
      articles: articlesList,
      status: json['status'],
      totalResults: json['totalResults'],
    );
  }
}
