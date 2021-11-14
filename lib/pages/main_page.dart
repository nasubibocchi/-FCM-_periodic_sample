import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fcm_periodic_sample/entities/post.dart';
import 'package:fcm_periodic_sample/pages/post_page.dart';
import 'package:fcm_periodic_sample/pages/widgets/date_widget/date_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  MainPage({required this.fcmToken});

  String? fcmToken;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firestore = FirebaseFirestore.instance;
    final dateModel = DateModel();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PostPage(fcmToken: fcmToken)));
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.pink),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                Colors.pink.withOpacity(0.5),
                Colors.red.shade500.withOpacity(0.5),
              ],
            ),
          ),
          child: fcmToken == ''
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: StreamBuilder(
                      stream: firestore
                          .collection('users')
                          .doc(fcmToken)
                          .collection('post')
                          .orderBy('createdAt')
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text(snapshot.error.toString());
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.data!.docs.isEmpty) {
                          return const Center(
                            child: SizedBox(),
                          );
                        } else {
                          final postList =
                              snapshot.data!.docs.map((e) => Post(e)).toList();

                          return SizedBox(
                            height: size.height * 0.88,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: postList.length,
                                itemBuilder: (BuildContext context, int index) {

                                  return Card(
                                    color: Colors.white.withOpacity(0.8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 16.0),
                                          child: Text(
                                              postList[index].text.toString()),
                                        ),
                                        Text(dateModel.dateFormat(
                                            postList[index].notifyDate!)),
                                      ],
                                    ),
                                  );
                                }),
                          );
                        }
                      }),
                )),
    );
  }
}
