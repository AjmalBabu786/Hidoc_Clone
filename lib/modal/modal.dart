// To parse this JSON data, do
//
//     final prodect = prodectFromJson(jsonString);

import 'dart:convert';

Prodect prodectFromJson(String str) => Prodect.fromJson(json.decode(str));

String prodectToJson(Prodect data) => json.encode(data.toJson());

class Prodect {
  int success;
  String message;
  Data data;
  DateTime timestamp;

  Prodect({
    required this.success,
    required this.message,
    required this.data,
    required this.timestamp,
  });

  factory Prodect.fromJson(Map<String, dynamic> json) => Prodect(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        timestamp: DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
        "timestamp": timestamp.toIso8601String(),
      };
}

class Data {
  List<News> news;
  List<Article> trandingBulletin;
  String specialityName;
  List<dynamic> latestArticle;
  List<Article> exploreArticle;
  List<Article> trandingArticle;
  Article article;
  List<Article> bulletin;
  int sId;

  Data({
    required this.news,
    required this.trandingBulletin,
    required this.specialityName,
    required this.latestArticle,
    required this.exploreArticle,
    required this.trandingArticle,
    required this.article,
    required this.bulletin,
    required this.sId,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
        trandingBulletin: List<Article>.from(
            json["trandingBulletin"].map((x) => Article.fromJson(x))),
        specialityName: json["specialityName"],
        latestArticle: List<dynamic>.from(json["latestArticle"].map((x) => x)),
        exploreArticle: List<Article>.from(
            json["exploreArticle"].map((x) => Article.fromJson(x))),
        trandingArticle: List<Article>.from(
            json["trandingArticle"].map((x) => Article.fromJson(x))),
        article: Article.fromJson(json["article"]),
        bulletin: List<Article>.from(
            json["bulletin"].map((x) => Article.fromJson(x))),
        sId: json["sId"],
      );

  Map<String, dynamic> toJson() => {
        "news": List<dynamic>.from(news.map((x) => x.toJson())),
        "trandingBulletin":
            List<dynamic>.from(trandingBulletin.map((x) => x.toJson())),
        "specialityName": specialityName,
        "latestArticle": List<dynamic>.from(latestArticle.map((x) => x)),
        "exploreArticle":
            List<dynamic>.from(exploreArticle.map((x) => x.toJson())),
        "trandingArticle":
            List<dynamic>.from(trandingArticle.map((x) => x.toJson())),
        "article": article.toJson(),
        "bulletin": List<dynamic>.from(bulletin.map((x) => x.toJson())),
        "sId": sId,
      };
}

class Article {
  int id;
  String articleTitle;
  String redirectLink;
  String articleImg;
  String articleDescription;
  String? specialityId;
  int rewardPoints;
  String? keywordsList;
  String? articleUniqueId;
  int articleType;
  DateTime? createdAt;

  Article({
    required this.id,
    required this.articleTitle,
    required this.redirectLink,
    required this.articleImg,
    required this.articleDescription,
    this.specialityId,
    required this.rewardPoints,
    this.keywordsList,
    this.articleUniqueId,
    required this.articleType,
    this.createdAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        articleTitle: json["articleTitle"],
        redirectLink: json["redirectLink"],
        articleImg: json["articleImg"],
        articleDescription: json["articleDescription"],
        specialityId: json["specialityId"],
        rewardPoints: json["rewardPoints"],
        keywordsList: json["keywordsList"],
        articleUniqueId: json["articleUniqueId"],
        articleType: json["articleType"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "articleTitle": articleTitle,
        "redirectLink": redirectLink,
        "articleImg": articleImg,
        "articleDescription": articleDescription,
        "specialityId": specialityId,
        "rewardPoints": rewardPoints,
        "keywordsList": keywordsList,
        "articleUniqueId": articleUniqueId,
        "articleType": articleType,
        "createdAt": createdAt?.toIso8601String(),
      };
}

class News {
  int id;
  String title;
  String url;
  String urlToImage;
  String description;
  String speciality;
  String newsUniqueId;
  int trendingLatest;
  DateTime publishedAt;

  News({
    required this.id,
    required this.title,
    required this.url,
    required this.urlToImage,
    required this.description,
    required this.speciality,
    required this.newsUniqueId,
    required this.trendingLatest,
    required this.publishedAt,
  });

  factory News.fromJson(Map<String, dynamic> json) => News(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        description: json["description"],
        speciality: json["speciality"],
        newsUniqueId: json["newsUniqueId"],
        trendingLatest: json["trendingLatest"],
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "url": url,
        "urlToImage": urlToImage,
        "description": description,
        "speciality": speciality,
        "newsUniqueId": newsUniqueId,
        "trendingLatest": trendingLatest,
        "publishedAt": publishedAt.toIso8601String(),
      };
}
