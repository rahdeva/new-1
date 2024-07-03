class SekarAgung {
  SekarAgung({
    required this.id,
    required this.title,
  });

  int id;
  String? title;

  factory SekarAgung.fromJson(Map<String, dynamic> json) => SekarAgung(
    id: json["id"],
    title: json["title"] ,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
  };
}