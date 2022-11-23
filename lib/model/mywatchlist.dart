// To parse this JSON data, do
//
//     final myWatchListModel = myWatchListModelFromJson(jsonString);

import 'dart:convert';

List<MyWatchListModel> myWatchListModelFromJson(String str) => List<MyWatchListModel>.from(json.decode(str).map((x) => MyWatchListModel.fromJson(x)));

String myWatchListModelToJson(List<MyWatchListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchListModel {
    MyWatchListModel({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model? model;
    int pk;
    Fields fields;

    factory MyWatchListModel.fromJson(Map<String, dynamic> json) => MyWatchListModel(
        model: modelValues.map[json["model"]],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    Watched? watched;
    String title;
    int rating;
    String releaseDate;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: watchedValues.map[json["watched"]],
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watchedValues.reverse[watched],
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}

enum Watched { YES }

final watchedValues = EnumValues({
    "yes": Watched.YES
});

enum Model { MYWATCHLIST_MYWATCHLIST }

final modelValues = EnumValues({
    "mywatchlist.mywatchlist": Model.MYWATCHLIST_MYWATCHLIST
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap!;
    }
}
