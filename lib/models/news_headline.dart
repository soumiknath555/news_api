class NewsHeadline {
  List<ArticleModels>? articles;
  String? status;
  int? totalResults;
  NewsHeadline ({
    required this.articles,
    required this.status,
    required this.totalResults
});

  //FROM JSON
  factory NewsHeadline.fromJson(Map<String, dynamic> json) {

    List<ArticleModels> articleList = [];
    for(Map<String , dynamic> eachArticle in json["articles"]){
      articleList.add(ArticleModels.fromJson(eachArticle));
    }

    return NewsHeadline(
      articles: json['articles'],
      status: json['status'],
      totalResults: json['totalResults'],
    );
  }

}

class ArticleModels {
  String? author;
  String? content;
  String? description;
  String? publishedAt;
  SourceModel? source;
  String? title;
  String? url;
  String? urlToImage;

  ArticleModels({
    required this.author,
    required this.content,
    required this.description,
    required this.publishedAt,
    required this.source,
    required this.title,
    required this.url,
    required this.urlToImage,
  });

  //FROM JSON
  factory ArticleModels.fromJson(Map<String, dynamic> json) {
    return ArticleModels(
      author: json['author'],
      content: json['content'],
      description: json['description'],
      publishedAt: json['publishedAt'],
      source: json['source'],
      title: json['title'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
}

class SourceModel {
  String? id;
  String? name;

  SourceModel({required this.id, required this.name});

  // FROM JSON
  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(id: json['id'].toString(),
        name: json['name']);
  }
}
