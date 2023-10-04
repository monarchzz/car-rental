import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:car_rental_for_customer/repositories/promotion_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_list_event.dart';
part 'promotion_list_state.dart';
part 'promotion_list_bloc.freezed.dart';

class PromotionListBloc extends Bloc<PromotionListEvent, PromotionListState> {
  PromotionListBloc({
    required this.promotionRepository,
  }) : super(const PromotionListState(promotions: [])) {
    on<_Started>(_onStarted);
  }

  final PromotionRepository promotionRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<PromotionListState> emit,
  ) async {
    final result = await promotionRepository.promotions(
      pageNumber: 1,
      pageSize: 1000,
    );
    if (result is ApiError) {
      return;
    }

    final promotions =
        (result as ApiSuccess<PaginationResult<Promotion>>).value.data;

    emit(PromotionListState(promotions: promotions));
  }
}
