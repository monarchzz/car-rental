import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/pages/promotion_list/bloc/promotion_list_bloc.dart';
import 'package:car_rental_for_customer/pages/promotion_list/views/promotion_detail_view.dart';
import 'package:car_rental_for_customer/pages/promotion_list/widgets/promotion_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromotionListView extends StatefulWidget {
  const PromotionListView({super.key});

  @override
  State<PromotionListView> createState() => _PromotionListViewState();
}

class _PromotionListViewState extends State<PromotionListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionListBloc, PromotionListState>(
      builder: (context, state) {
        final promotions = state.promotions;
        return Scaffold(
          appBar: appAppBar(context, titleText: 'Mã giảm giá'),
          body: SingleChildScrollView(
            child: Column(
              children: promotions
                  .map(
                    (promotion) => PromotionItem(
                      promotion: promotion,
                      onTap: (promotion) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return PromotionDetailView(promotion: promotion);
                          },
                        ).then((value) {
                          if (value != null) {
                            Navigator.pop(context, value);
                          }
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
