import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_detail_bloc.freezed.dart';
part 'profile_detail_event.dart';
part 'profile_detail_state.dart';

class ProfileDetailBloc extends Bloc<ProfileDetailEvent, ProfileDetailState> {
  ProfileDetailBloc({
    required this.userRepository,
  }) : super(const ProfileDetailState(user: null)) {
    on<_Started>(_onStarted);
    on<_Saved>(_onSaved);
  }

  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ProfileDetailState> emit,
  ) async {
    var user = await userRepository.getProfile();
    emit(ProfileDetailState(user: user));
  }

  FutureOr<void> _onSaved(
    _Saved event,
    Emitter<ProfileDetailState> emit,
  ) async {
    if (state.user == null) return;
    LoadingDialogService.load();

    final result = await userRepository.selfUpdate(
      id: state.user!.id,
      name: event.name,
      address: event.address,
      gender: event.gender,
      phone: event.phone,
    );

    LoadingDialogService.dispose();

    if (result is ApiError) {
      showMessageDialog(message: (result as ApiError).error);
    }

    if (result is ApiSuccess) {
      showMessageDialog(message: 'Cập nhập thành công');
    }
  }
}
