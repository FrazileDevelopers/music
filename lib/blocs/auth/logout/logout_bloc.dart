import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  LogoutBloc() : super(_Initial()) {
    on<LogoutAuth>((event, emit) async {
      emit(LogoutState.loading());
      try {
        await _firebaseAuth.signOut();
      } catch (ex) {}
      emit(LogoutState.success());
    });
  }
}
