// import 'package:flutter/widgets.dart';
//
// class UserProfile {
//   String name, avatar_url, bio;
//   int followers, following;
//
//   UserProfile({
//     @required this.name,
//     @required this.avatar_url,
//     @required this.bio,
//     @required this.followers,
//     @required this.following,
//   });
//
//   UserProfile.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     bio = json['bio'];
//     avatar_url = json['avatar_url'];
//     followers = json['followers'];
//     following = json['following'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['bio'] = this.bio;
//     data['avatar_url'] = this.avatar_url;
//     data['followers'] = this.followers;
//     data['following'] = this.following;
//     return data;
//   }
// }


// To parse this JSON data, do
//
//     final userProfile = userProfileFromJson(jsonString);

import 'dart:convert';

UserProfile userProfileFromJson(String str) => UserProfile.fromJson(json.decode(str));

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    this.profilePicture,
    this.name,
    this.age,
    this.address,
    this.subjects,
    this.purchasedCourses,
  });

  String profilePicture;
  String name;
  int age;
  Address address;
  Subjects subjects;
  List<dynamic> purchasedCourses;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    profilePicture: json["profile picture"],
    name: json["name"],
    age: json["age"],
    address: Address.fromJson(json["address"]),
    subjects: Subjects.fromJson(json["subjects"]),
    purchasedCourses: List<dynamic>.from(json["purchased courses"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "profile picture": profilePicture,
    "name": name,
    "age": age,
    "address": address.toJson(),
    "subjects": subjects.toJson(),
    "purchased courses": List<dynamic>.from(purchasedCourses.map((x) => x)),
  };
}

class Address {
  Address({
    this.state,
    this.area,
    this.road,
    this.place,
  });

  String state;
  String area;
  String road;
  String place;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    state: json["state"],
    area: json["area"],
    road: json["road"],
    place: json["place"],
  );

  Map<String, dynamic> toJson() => {
    "state": state,
    "area": area,
    "road": road,
    "place": place,
  };
}

class Subjects {
  Subjects({
    this.primary,
    this.optional,
  });

  List<String> primary;
  List<String> optional;

  factory Subjects.fromJson(Map<String, dynamic> json) => Subjects(
    primary: List<String>.from(json["primary"].map((x) => x)),
    optional: List<String>.from(json["optional"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "primary": List<dynamic>.from(primary.map((x) => x)),
    "optional": List<dynamic>.from(optional.map((x) => x)),
  };
}
