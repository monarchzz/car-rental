import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/promotion_list/bloc/promotion_list_bloc.dart';
import 'package:car_rental_for_customer/pages/promotion_list/views/promotion_list_view.dart';
import 'package:car_rental_for_customer/repositories/promotion_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromotionListPage extends StatelessWidget {
  const PromotionListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: PromotionListBloc(
        promotionRepository: getIt.get<PromotionRepository>(),
      )..add(const PromotionListEvent.started()),
      child: const PromotionListView(),
    );
  }
}
