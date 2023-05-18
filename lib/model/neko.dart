// To parse this JSON data, do
//
//     final NekoBody = NekoBodyFromJson(jsonString);

import 'dart:convert';

class NekoBody {
  List<Neko> results;

  NekoBody({
    required this.results,
  });

  factory NekoBody.fromRawJson(String str) => NekoBody.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NekoBody.fromJson(Map<String, dynamic> json) => NekoBody(
    results: List<Neko>.from(json["results"].map((x) => Neko.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Neko {
  String artistHref;
  String artistName;
  String sourceUrl;
  String url;

  Neko({
    required this.artistHref,
    required this.artistName,
    required this.sourceUrl,
    required this.url,
  });

  factory Neko.fromRawJson(String str) => Neko.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Neko.fromJson(Map<String, dynamic> json) => Neko(
    artistHref: json["artist_href"],
    artistName: json["artist_name"],
    sourceUrl: json["source_url"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "artist_href": artistHref,
    "artist_name": artistName,
    "source_url": sourceUrl,
    "url": url,
  };
}
