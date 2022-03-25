import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/strings.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  AuthBloc() : super(_Initial()) {
    on<GoogleLogin>((event, emit) async {
      emit(AuthState.loading());
      try {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        if (googleUser == null) {
          // cancelled, back to idle state
          emit(AuthState.initial());
        } else {
          final prefs = await SharedPreferences.getInstance();
          final GoogleSignInAuthentication googleAuth =
              await googleUser.authentication;

          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );
          final userCredential = await _firebaseAuth.signInWithCredential(
            credential,
          );
          final userToken = await userCredential.user?.getIdToken() ?? '';

          await prefs.setString(MusicStrings.userTokenKey, userToken);

          emit(AuthState.success(true));
        }
      } catch (ex) {
        emit(AuthState.error(error: ex));
        emit(AuthState.initial());
      }
    });
  }
}
