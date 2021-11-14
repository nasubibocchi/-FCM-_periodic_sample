import 'package:fcm_periodic_sample/pages/widgets/date_widget/date_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'date_state.dart';

final notifyDateProvider =
    StateNotifierProvider.autoDispose<NotifyDateController, NotifyDateState>(
        (ref) => NotifyDateController());
