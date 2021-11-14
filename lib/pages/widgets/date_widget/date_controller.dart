import 'package:fcm_periodic_sample/pages/widgets/date_widget/date_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotifyDateController extends StateNotifier<NotifyDateState> {
  NotifyDateController() : super(NotifyDateState(notifyDate: DateTime.now()));

  Future<void> selectNotifyDate({required BuildContext context}) async {
    final _selected = await showDatePicker(
        context: context,
        locale: const Locale("ja"),
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030),
        builder: (context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: const ColorScheme.light().copyWith(
                primary: Colors.pink,
              ),
            ),
            child: child!,
          );
        });

    if (_selected != null) {
      state = NotifyDateState(notifyDate: _selected);
    }
  }
}