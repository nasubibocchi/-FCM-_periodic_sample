import 'package:fcm_periodic_sample/pages/widgets/date_widget/date_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'date_proovider.dart';

class NotifyDateWidget extends HookConsumerWidget {
  NotifyDateWidget({required this.notifyDate});
  DateTime notifyDate;
  final _dateModel = DateModel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text('通知日',
              style: TextStyle(color: Colors.black54, fontSize: 16.0)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                ref
                    .read(notifyDateProvider.notifier)
                    .selectNotifyDate(context: context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: size.width * 0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.event, color: Colors.red),
                      ),
                      Text(
                        notifyDate == null ? '' : _dateModel.dateFormat(notifyDate),
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}