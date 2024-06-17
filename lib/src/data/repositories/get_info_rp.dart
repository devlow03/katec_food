// To parse this JSON data, do
//
//     final getInfoRp = getInfoRpFromJson(jsonString);

import 'dart:convert';

GetInfoRp getInfoRpFromJson(String str) => GetInfoRp.fromJson(json.decode(str));

String getInfoRpToJson(GetInfoRp data) => json.encode(data.toJson());

class GetInfoRp {
    String message;
    Data data;

    GetInfoRp({
        required this.message,
        required this.data,
    });

    factory GetInfoRp.fromJson(Map<String, dynamic> json) => GetInfoRp(
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
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
    List<Role> roles;

    Data({
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
        required this.roles,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
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
        "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
    };
}

class Role {
    int id;
    String roleName;
    dynamic updatedBy;
    int createdAt;
    int updatedAt;
    List<Permission> permissions;

    Role({
        required this.id,
        required this.roleName,
        required this.updatedBy,
        required this.createdAt,
        required this.updatedAt,
        required this.permissions,
    });

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        roleName: json["role_name"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        permissions: List<Permission>.from(json["permissions"].map((x) => Permission.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "role_name": roleName,
        "updated_by": updatedBy,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "permissions": List<dynamic>.from(permissions.map((x) => x.toJson())),
    };
}

class Permission {
    int id;
    String permissionName;
    String permissionCode;
    dynamic idParentPermission;
    int createdAt;
    int updatedAt;

    Permission({
        required this.id,
        required this.permissionName,
        required this.permissionCode,
        required this.idParentPermission,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Permission.fromJson(Map<String, dynamic> json) => Permission(
        id: json["id"],
        permissionName: json["permission_name"],
        permissionCode: json["permission_code"],
        idParentPermission: json["id_parent_permission"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "permission_name": permissionName,
        "permission_code": permissionCode,
        "id_parent_permission": idParentPermission,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
