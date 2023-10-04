part of 'profile_detail_bloc.dart';

@freezed
class ProfileDetailState with _$ProfileDetailState {
  const factory ProfileDetailState({
    User? user,
  }) = _ProfileDetailState;
}
