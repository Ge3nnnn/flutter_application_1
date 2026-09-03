// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'auth_responses.g.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

@JsonSerializable()
class Welcome {
    @JsonKey(name: "message")
    final String message;
    @JsonKey(name: "data")
    final Data data;

    Welcome({
        required this.message,
        required this.data,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => _$WelcomeFromJson(json);

    Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "token")
    final String token;
    @JsonKey(name: "user")
    final User user;
    @JsonKey(name: "profile_photo_url")
    final dynamic profilePhotoUrl;

    Data({
        required this.token,
        required this.user,
        required this.profilePhotoUrl,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
    @JsonKey(name: "name")
    final String name;
    @JsonKey(name: "email")
    final String email;
    @JsonKey(name: "batch_id")
    final int batchId;
    @JsonKey(name: "training_id")
    final int trainingId;
    @JsonKey(name: "jenis_kelamin")
    final String jenisKelamin;
    @JsonKey(name: "profile_photo")
    final dynamic profilePhoto;
    @JsonKey(name: "updated_at")
    final DateTime updatedAt;
    @JsonKey(name: "created_at")
    final DateTime createdAt;
    @JsonKey(name: "id")
    final int id;
    @JsonKey(name: "batch")
    final Batch batch;
    @JsonKey(name: "training")
    final Training training;

    User({
        required this.name,
        required this.email,
        required this.batchId,
        required this.trainingId,
        required this.jenisKelamin,
        required this.profilePhoto,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
        required this.batch,
        required this.training,
    });

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

    Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Batch {
    @JsonKey(name: "id")
    final int id;
    @JsonKey(name: "batch_ke")
    final int batchKe;
    @JsonKey(name: "start_date")
    final DateTime startDate;
    @JsonKey(name: "end_date")
    final DateTime endDate;
    @JsonKey(name: "created_at")
    final DateTime createdAt;
    @JsonKey(name: "updated_at")
    final DateTime updatedAt;

    Batch({
        required this.id,
        required this.batchKe,
        required this.startDate,
        required this.endDate,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);

    Map<String, dynamic> toJson() => _$BatchToJson(this);
}

@JsonSerializable()
class Training {
    @JsonKey(name: "id")
    final int id;
    @JsonKey(name: "title")
    final String title;
    @JsonKey(name: "description")
    final dynamic description;
    @JsonKey(name: "participant_count")
    final dynamic participantCount;
    @JsonKey(name: "standard")
    final dynamic standard;
    @JsonKey(name: "duration")
    final dynamic duration;
    @JsonKey(name: "created_at")
    final DateTime createdAt;
    @JsonKey(name: "updated_at")
    final DateTime updatedAt;

    Training({
        required this.id,
        required this.title,
        required this.description,
        required this.participantCount,
        required this.standard,
        required this.duration,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Training.fromJson(Map<String, dynamic> json) => _$TrainingFromJson(json);

    Map<String, dynamic> toJson() => _$TrainingToJson(this);
}
