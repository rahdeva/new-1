import 'package:flutter/material.dart';

class Sekar {
  Sekar({
    required this.id,
    required this.title,
    required this.desc,
    required this.color,
    required this.route,
    required this.image,
  });

  int id;
  String? title;
  String? desc;
  Color? color;
  String? route;
  String? image;

  factory Sekar.fromJson(Map<String, dynamic> json) => Sekar(
    id: json["id"],
    title: json["title"] ,
    desc: json["desc"] ,
    color: json["color"] ,
    route: json["route"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "desc": desc,
    "color": color,
    "route": route,
    "image": image,
  };
}