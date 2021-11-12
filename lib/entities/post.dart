import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  DateTime? createdAt;
  DateTime? notifyDate;
  String? text;

  Post (DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    createdAt = data['createdAt'].toDate();
    notifyDate = data['notifyDate'].toDate();
    text = data['text'];
  }
}