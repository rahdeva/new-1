// To parse this JSON data, do
//
//     final sekarRareResponse = sekarRareResponseFromJson(jsonString);

import 'dart:convert';

SekarRareResponse sekarRareResponseFromJson(String str) => SekarRareResponse.fromJson(json.decode(str));

String sekarRareResponseToJson(SekarRareResponse data) => json.encode(data.toJson());

class SekarRareResponse {
    int? page;
    int? perPage;
    int? totalPages;
    int? totalItems;
    List<SekarRare>? items;

    SekarRareResponse({
        this.page,
        this.perPage,
        this.totalPages,
        this.totalItems,
        this.items,
    });

    factory SekarRareResponse.fromJson(Map<String, dynamic> json) => SekarRareResponse(
        page: json["page"],
        perPage: json["perPage"],
        totalPages: json["totalPages"],
        totalItems: json["totalItems"],
        items: json["items"] == null ? [] : List<SekarRare>.from(json["items"]!.map((x) => SekarRare.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "perPage": perPage,
        "totalPages": totalPages,
        "totalItems": totalItems,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
    };
}

class SekarRare {
    String? id;
    String? collectionId;
    String? collectionName;
    DateTime? created;
    DateTime? updated;
    String? songType;
    String? songSubtype;
    String? title;
    String? history;
    String? musicData;
    String? musicAdditonal;
    // String? lyrics;
    String? lyricString;

    SekarRare({
        this.id,
        this.collectionId,
        this.collectionName,
        this.created,
        this.updated,
        this.songType,
        this.songSubtype,
        this.title,
        this.history,
        this.musicData,
        this.musicAdditonal,
        // this.lyrics,
        this.lyricString,
    });

    factory SekarRare.fromJson(Map<String, dynamic> json) => SekarRare(
        id: json["id"],
        collectionId: json["collectionId"],
        collectionName: json["collectionName"],
        created: json["created"] == null ? null : DateTime.parse(json["created"]),
        updated: json["updated"] == null ? null : DateTime.parse(json["updated"]),
        songType: json["song_type"],
        songSubtype: json["song_subtype"],
        title: json["title"],
        history: json["history"],
        musicData: json["music_data"],
        musicAdditonal: json["music_additonal"],
        // lyrics: json["lyrics"],
        lyricString: json["lyric_string"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "collectionId": collectionId,
        "collectionName": collectionName,
        "created": created?.toIso8601String(),
        "updated": updated?.toIso8601String(),
        "song_type": songType,
        "song_subtype": songSubtype,
        "title": title,
        "history": history,
        "music_data": musicData,
        "music_additonal": musicAdditonal,
        // "lyrics": lyrics,
        "lyric_string": lyricString,
    };
}
