import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FirestoreModel {
  final firestore = FirebaseFirestore.instance;

  Future<void> saveFcmToken({String? token}) async {
    final collectionRef = firestore.collection('users');
    final snapshot =
        await collectionRef.where('fcmToken', isEqualTo: token).get();
    final doc = snapshot.docs;

    if (doc.isEmpty) {
      await collectionRef.doc(token).set(<String, dynamic>{
        'fcmToken': token,
      });
    }
  }

  Future<void> add2Firestore(
      {required text,
      required notifyDate,
      required fcmToken,
      required BuildContext context}) async {
    final collectionRef =
        firestore.collection('users').doc(fcmToken).collection('post');

    await collectionRef.add(<String, dynamic>{
      'fcmToken': fcmToken,
      'text': text,
      'notifyDate': notifyDate,
      'createdAt': DateTime.now(),
    });
    var count = 0;
    Navigator.popUntil(context, (route) => count++ >= 2);
  }
}
