import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.userRepository,
  }) : super(const ProfileState()) {
    on<_Started>(_onStarted);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ProfileState> emit,
  ) async {
    final user = await userRepository.getProfile();
    emit(ProfileState(user: user));
  }
}
