class Picture{
  String large;
  String medium;
  String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json["large"],
      medium: json["medium"],
      thumbnail: json["thumbnail"],
    );
  }
//
}