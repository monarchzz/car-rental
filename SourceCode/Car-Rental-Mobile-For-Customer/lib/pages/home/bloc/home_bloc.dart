import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.userRepository,
    required this.carRepository,
  }) : super(const HomeState.initial()) {
    on<_Started>(_onStarted);
    on<_TopDealIndexChanged>(_onTopDealIndexChanged);
  }

  final UserRepository userRepository;
  final CarRepository carRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    final user = await userRepository.getProfile();

    if (user == null) {
      emit(const HomeState.error('User is null'));
      return;
    }
    const topDealIndex = 0;
    emit(HomeState.success(
      user: user,
      topDealIndex: topDealIndex,
      topDeals: [],
    ));

    final carResult = await carRepository.carSearch(
      pageNumber: 1,
      pageSize: 10,
    );

    if (carResult is ApiSuccess) {
      final cars = (carResult as ApiSuccess<PaginationResult<Car>>).value.data;

      emit(HomeState.success(
        user: user,
        topDealIndex: topDealIndex,
        topDeals: cars,
      ));
    }
  }

  FutureOr<void> _onTopDealIndexChanged(
    _TopDealIndexChanged event,
    Emitter<HomeState> emit,
  ) async {
    if (state is! _Success) return;

    ApiResponse<PaginationResult<Car>>? carResult;

    if (event.index == 0) {
      carResult = await carRepository.carSearch(
        pageNumber: 1,
        pageSize: 10,
      );
    } else if (event.index == 1) {
      carResult = await carRepository.carSearch(
        pageNumber: 1,
        pageSize: 10,
        hasDriver: false,
      );
    } else if (event.index == 2) {
      carResult = await carRepository.carSearch(
        pageNumber: 1,
        pageSize: 10,
        hasDriver: true,
      );
    }

    if (carResult is ApiSuccess) {
      final cars = (carResult as ApiSuccess<PaginationResult<Car>>).value.data;

      emit(HomeState.success(
        user: (state as _Success).user,
        topDealIndex: event.index,
        topDeals: cars,
      ));
    }
  }
}
