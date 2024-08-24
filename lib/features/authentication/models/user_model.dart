import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String username;
  final String email;
  String name;
  String imageUrl;
  List<String>? followers;
  List<String>? following;

  /// Constructor for UserModel
  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.name,
    this.imageUrl = '',
    this.followers,
    this.following,
  });

  /// Empty
  static UserModel empty() =>
      UserModel(id: '', username: '', email: '', name: '');

  /// Convert model to JSON structure for storing data in Firebase.
  Map<String, dynamic> toJson() {
    return {
      'Username': username,
      'Email': email,
      'Name': name,
      'ImageUrl': imageUrl,
      'Followers': [],
      'Following': [],
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        name: data['Name'] ?? '',
        imageUrl: data['ImageUrl'] ?? '',
        followers: data['Followers'] ?? [],
        following: data['Following'] ?? [],
      );
    } else {
      return UserModel.empty();
    }
  }
}
