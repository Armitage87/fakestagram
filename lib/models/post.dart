import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postid;
  final DateTime datePublished;
  final String postUrl;
  final String profileImage;
  final List likes;

  const Post(
      {required this.description,
      required this.uid,
      required this.username,
      required this.postUrl,
      required this.datePublished,
      required this.postid,
      required this.profileImage,
      required this.likes});

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'username': username,
        'postUrl': postUrl,
        'datePublished': datePublished,
        'postid': postid,
        'profileImage': profileImage,
        'likes': likes
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        description: snapshot['description'],
        uid: snapshot['uid'],
        username: snapshot['username'],
        postUrl: snapshot['postUrl'],
        datePublished: snapshot['datePublished'],
        postid: snapshot['postid'],
        profileImage: snapshot['profileImage'],
        likes: snapshot['likes']);
  }
}
