// To parse this JSON data, do
//
//     final postLoginRp = postLoginRpFromJson(jsonString);

import 'dart:convert';

PostLoginRp postLoginRpFromJson(String str) => PostLoginRp.fromJson(json.decode(str));

String postLoginRpToJson(PostLoginRp data) => json.encode(data.toJson());

class PostLoginRp {
    String message;
    Data data;

    PostLoginRp({
        required this.message,
        required this.data,
    });

    factory PostLoginRp.fromJson(Map<String, dynamic> json) => PostLoginRp(
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    String accessToken;
    int id;
    int idSchool;
    String fullName;
    String username;
    String address;
    String profession;
    String email;
    String isStatus;
    String phoneNumber;
    int createdBy;
    int updatedBy;
    DateTime passwordChangedAt;
    int isDelete;
    int createdAt;
    int updatedAt;

    Data({
        required this.accessToken,
        required this.id,
        required this.idSchool,
        required this.fullName,
        required this.username,
        required this.address,
        required this.profession,
        required this.email,
        required this.isStatus,
        required this.phoneNumber,
        required this.createdBy,
        required this.updatedBy,
        required this.passwordChangedAt,
        required this.isDelete,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json["accessToken"],
        id: json["id"],
        idSchool: json["id_school"],
        fullName: json["full_name"],
        username: json["username"],
        address: json["address"],
        profession: json["profession"],
        email: json["email"],
        isStatus: json["is_status"],
        phoneNumber: json["phone_number"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        passwordChangedAt: DateTime.parse(json["password_changed_at"]),
        isDelete: json["is_delete"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "id": id,
        "id_school": idSchool,
        "full_name": fullName,
        "username": username,
        "address": address,
        "profession": profession,
        "email": email,
        "is_status": isStatus,
        "phone_number": phoneNumber,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "password_changed_at": passwordChangedAt.toIso8601String(),
        "is_delete": isDelete,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
