import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/production_company.dart';
import 'package:car_rental_for_customer/models/scroll_pagination.dart';
import 'package:car_rental_for_customer/pages/car_search_result/models/car_search_filter.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/production_conpany_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_search_result_bloc.freezed.dart';
part 'car_search_result_event.dart';
part 'car_search_result_state.dart';

class CarSearchResultBloc
    extends Bloc<CarSearchResultEvent, CarSearchResultState> {
  CarSearchResultBloc({
    required this.carRepository,
    required this.mapsRepository,
    required this.productionCompanyRepository,
  }) : super(const CarSearchResultState.initial()) {
    on<_Started>(_onStarted);
    on<_PageRequested>(_onPageRequested);
    on<_CarTypeFilterChanged>(_onCarTypeFilterChanged);
    on<_TransmissionFilterChanged>(_onTransmissionFilterChanged);
    on<_IsDiscountedFilterChanged>(_onIsDiscountedFilterChanged);
    on<_ProductionCompanyFilterChanged>(_onProductionCompanyFilterChanged);
  }

  late String address;
  late DateTime startDate;
  late DateTime endDate;
  late double latitude;
  late double longitude;
  int? distance;
  final pageSize = 10;

  final CarRepository carRepository;
  final MapsRepository mapsRepository;
  final ProductionCompanyRepository productionCompanyRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarSearchResultState> emit,
  ) async {
    emit(const CarSearchResultState.loading());

    address = event.address;
    startDate = event.startDate;
    endDate = event.endDate;
    latitude = event.latitude;
    longitude = event.longitude;
    distance = event.distance;

    // final carsResult = carRepository.cars(
    //   pageNumber: 1,
    //   pageSize: pageSize,
    //   longitude: event.longitude,
    //   latitude: event.latitude,
    //   hasDriver: event.rentalCarType == RentalCarType.carWithDriver,
    // );

    // List<Car> cars = [];

    // if (carsResult is ApiSuccess) {
    //   cars = (carsResult as ApiSuccess<PaginationResult<Car>>).value.data;
    // }

    List<ProductionCompany> allProductionCompanies = [];

    final productionCompaniesResult =
        await productionCompanyRepository.allCompanies();

    if (productionCompaniesResult is ApiSuccess) {
      allProductionCompanies =
          (productionCompaniesResult as ApiSuccess<List<ProductionCompany>>)
              .value;
    }

    emit(
      CarSearchResultState.success(
        // cars: cars,
        address: address,
        endDate: endDate,
        startDate: startDate,
        latitude: latitude,
        longitude: longitude,
        carSearchFilter: const CarSearchFilter(),
        allProductionCompanies: allProductionCompanies,
      ),
    );
  }

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<CarSearchResultState> emit,
  ) async {
    if (state is! _Success) {
      return;
    }

    final currentState = state as _Success;
    final page = (event.pageKey / pageSize).floor() + 1;

    final carsResult = await carRepository.carSearch(
      pageNumber: page,
      pageSize: pageSize,
      longitude: currentState.longitude,
      latitude: currentState.latitude,
      hasDriver: true,
      carType: currentState.carSearchFilter.carType,
      transmissionType: currentState.carSearchFilter.transmission,
      startTime: currentState.startDate,
      endTime: currentState.endDate,
      distance: distance,
      productionCompany: currentState.carSearchFilter.productionCompany,
    );

    List<Car> cars = [];
    int totalItems = 0;

    if (carsResult is ApiSuccess) {
      cars = (carsResult as ApiSuccess<PaginationResult<Car>>).value.data;
      totalItems = (carsResult as ApiSuccess<PaginationResult<Car>>)
          .value
          .pagination
          .totalRow;
    }

    final lastListingState =
        event.pageKey == 0 || currentState.scrollPagination == null
            ? ScrollPagination<Car>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : currentState.scrollPagination!;

    emit(currentState.copyWith(
      scrollPagination: _calculateScrollPagination(
        lastListingState,
        cars,
        event.pageKey,
        totalItems,
      ),
    ));
  }

  FutureOr<void> _onCarTypeFilterChanged(
    _CarTypeFilterChanged event,
    Emitter<CarSearchResultState> emit,
  ) async {
    if (state is! _Success) return;

    final currentState = state as _Success;
    emit(
      currentState.copyWith(
        carSearchFilter: currentState.carSearchFilter.copyWith(
          carType: event.carType,
        ),
      ),
    );

    add(const _PageRequested(pageKey: 0));
  }

  FutureOr<void> _onTransmissionFilterChanged(
    _TransmissionFilterChanged event,
    Emitter<CarSearchResultState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;
    emit(
      currentState.copyWith(
        carSearchFilter: currentState.carSearchFilter.copyWith(
          transmission: event.transmission,
        ),
      ),
    );

    add(const _PageRequested(pageKey: 0));
  }

  FutureOr<void> _onIsDiscountedFilterChanged(
    _IsDiscountedFilterChanged event,
    Emitter<CarSearchResultState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;
    emit(
      currentState.copyWith(
        carSearchFilter: currentState.carSearchFilter.copyWith(
          isDiscounted: !currentState.carSearchFilter.isDiscounted,
        ),
      ),
    );
    add(const _PageRequested(pageKey: 0));
  }

  FutureOr<void> _onProductionCompanyFilterChanged(
    _ProductionCompanyFilterChanged event,
    Emitter<CarSearchResultState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;
    emit(
      currentState.copyWith(
        carSearchFilter: currentState.carSearchFilter.copyWith(
          productionCompany: event.productionCompany,
        ),
      ),
    );

    add(const _PageRequested(pageKey: 0));
  }

  ScrollPagination<Car> _calculateScrollPagination(
    ScrollPagination<Car> lastListingState,
    Iterable<Car> cars,
    int pageKey,
    int totalItems,
  ) {
    final isLastPage = pageKey + cars.length >= totalItems;

    final nextPageKey = isLastPage ? null : pageKey + cars.length;

    final itemList = [...?lastListingState.itemList, ...cars];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
