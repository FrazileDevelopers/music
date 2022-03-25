import 'package:freezed_annotation/freezed_annotation.dart';

part 'userModel.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
  }) = _User;
}
