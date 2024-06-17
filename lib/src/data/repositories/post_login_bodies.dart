// To parse this JSON data, do
//
//     final postLoginBodies = postLoginBodiesFromJson(jsonString);

import 'dart:convert';

PostLoginBodies postLoginBodiesFromJson(String str) => PostLoginBodies.fromJson(json.decode(str));

String postLoginBodiesToJson(PostLoginBodies data) => json.encode(data.toJson());

class PostLoginBodies {
    String username;
    String password;

    PostLoginBodies({
        required this.username,
        required this.password,
    });

    factory PostLoginBodies.fromJson(Map<String, dynamic> json) => PostLoginBodies(
        username: json["username"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
    };
}
