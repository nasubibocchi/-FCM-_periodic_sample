import 'package:fcm_periodic_sample/pages/firestore_model.dart';
import 'package:fcm_periodic_sample/pages/widgets/date_widget/date_proovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/date_widget/notify_date_widget.dart';

class PostPage extends HookConsumerWidget {
  PostPage({required this.fcmToken});

  String? fcmToken;

  String text = '';
  DateTime notifyDate = DateTime.now();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = TextEditingController(text: text);
    textController.selection = TextSelection.fromPosition(
        TextPosition(offset: textController.text.length));

    final firestoreModel = FirestoreModel();

    notifyDate = ref.watch(notifyDateProvider).notifyDate!;

    return Scaffold(
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
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            //text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                onChanged: (value) {
                  text = value;
                },
                onEditingComplete: () {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: '内容',
                  hintText: 'テキストを入力',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                ),
                controller: textController,
              ),
            ),
            const SizedBox(height: 20.0),
            //通知日
            NotifyDateWidget(notifyDate: notifyDate),
            const SizedBox(height: 20.0),
            //登録ボタン
            ElevatedButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('登録します',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 16.0)),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ///CANCEL
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: OutlinedButton.styleFrom(
                                    elevation: 5.0,
                                    backgroundColor: Colors.white,
                                    shape: const StadiumBorder(),
                                    side:
                                        const BorderSide(color: Colors.black54),
                                  ),
                                  child: const Text('CANCEL',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 16.0)),
                                ),

                                ///OK
                                OutlinedButton(
                                  onPressed: () {
                                    firestoreModel.saveFcmToken();
                                    if (fcmToken != '') {
                                      firestoreModel.add2Firestore(
                                          text: text,
                                          notifyDate: notifyDate,
                                          fcmToken: fcmToken,
                                          context: context);
                                    }
                                  },
                                  style: OutlinedButton.styleFrom(
                                    elevation: 5.0,
                                    backgroundColor: Colors.white,
                                    shape: const StadiumBorder(),
                                    side:
                                        const BorderSide(color: Colors.black54),
                                  ),
                                  child: const Text('OK',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 16.0)),
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 5.0,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  '登録する',
                  style: TextStyle(color: Colors.pink, fontSize: 16.0),
                )),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
