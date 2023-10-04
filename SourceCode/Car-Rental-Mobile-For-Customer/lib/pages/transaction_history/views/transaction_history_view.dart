import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/models/transaction.dart';
import 'package:car_rental_for_customer/pages/transaction_history/bloc/transaction_history_bloc.dart';
import 'package:car_rental_for_customer/pages/wallet/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TransactionHistoryView extends StatefulWidget {
  const TransactionHistoryView({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryView> createState() => _TransactionHistoryViewState();
}

class _TransactionHistoryViewState extends State<TransactionHistoryView> {
  final PagingController<int, Transaction> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<TransactionHistoryBloc>()
          .add(TransactionHistoryEvent.pageRequested(pageKey: pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionHistoryBloc, TransactionHistoryState>(
      listener: (context, state) {
        final scrollPagination = state.scrollPagination;
        if (scrollPagination != null) {
          _pagingController.value = PagingState(
            nextPageKey: scrollPagination.nextPageKey,
            error: scrollPagination.error,
            itemList: scrollPagination.itemList,
          );
        }
      },
      child: Scaffold(
        appBar: appAppBar(
          context,
          titleText: 'Lịch sử giao dịch',
          leading: true,
        ),
        body: RefreshIndicator(
          onRefresh: () => Future.sync(
            () => _pagingController.refresh(),
          ),
          child: Container(
            padding: const EdgeInsets.all(s08),
            child: Column(
              children: [
                Expanded(
                  child: PagedListView(
                    scrollDirection: Axis.vertical,
                    builderDelegate: PagedChildBuilderDelegate<Transaction>(
                      animateTransitions: true,
                      noItemsFoundIndicatorBuilder: (context) {
                        return Column(
                          children: const [
                            Text(
                              'Không có giao dịch nào',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      },
                      itemBuilder: (context, item, index) => TransactionItem(
                        transaction: item,
                        onTap: (transaction) {
                          context.pushNamed(
                            RouteName.transactionDetail,
                            queryParams: {
                              'transaction-id': transaction.id,
                            },
                          );
                        },
                      ),
                    ),
                    pagingController: _pagingController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
