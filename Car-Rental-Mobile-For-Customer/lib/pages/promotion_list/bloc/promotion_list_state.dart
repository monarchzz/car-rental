part of 'promotion_list_bloc.dart';

@freezed
class PromotionListState with _$PromotionListState {
  const factory PromotionListState({
    required List<Promotion> promotions,
  }) = _PromotionListState;
}
