import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashLoading());

  void startSplashing() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    emit(SplashFinished());
  }
}
