import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'license_event.dart';
part 'license_state.dart';
part 'license_bloc.freezed.dart';

class LicenseBloc extends Bloc<LicenseEvent, LicenseState> {
  LicenseBloc({
    required this.userRepository,
  }) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_LicenseUpdated>(_onLicenseUpdated);
  }
  User? _user;
  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<LicenseState> emit,
  ) async {
    emit(const LicenseState.loading());

    final user = await userRepository.getProfile();

    if (user != null) {
      emit(LicenseState.success(user: user));
    } else {
      emit(const LicenseState.failure(message: 'Lỗi không xác định'));
    }
  }

  FutureOr<void> _onLicenseUpdated(
    _LicenseUpdated event,
    Emitter<LicenseState> emit,
  ) async {
    LoadingDialogService.load();

    final result = await userRepository.uploadLicense(
      images: event.images,
    );

    LoadingDialogService.dispose();

    if (result is ApiError) {
      showMessageDialog(message: (result as ApiError).error);
    }

    if (result is ApiSuccess) {
      showMessageDialog(message: 'Cập nhập thành công');
      add(const _Started());
    }
  }
}
