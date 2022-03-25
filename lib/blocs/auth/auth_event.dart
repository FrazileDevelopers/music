part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // When the user signing in with email and password this event is called and the [AuthRepository] is called to sign in the user
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;

// When the user signing up with email and password this event is called and the [AuthRepository] is called to sign up the user
  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
  }) = SignUpRequested;

  // When the user signing in with google this event is called and the [AuthRepository] is called to sign in the user
  const factory AuthEvent.googleSignInRequested() = GoogleSignInRequested;

  // When the user signing out this event is called and the [AuthRepository] is called to sign out the user
  const factory AuthEvent.signOutRequested() = SignOutRequested;
}
