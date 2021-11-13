import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'token_controller.dart';
import 'token_state.dart';

final tokenProvider =
StateNotifierProvider.autoDispose<TokenController, TokenState>(
        (ref) => TokenController());