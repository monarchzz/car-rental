import 'package:car_rental_for_customer/app/route/observers.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/models/enums/feedback_type.dart';
import 'package:car_rental_for_customer/pages/activity/activity.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/views/car_booking_confirmation_page.dart';
import 'package:car_rental_for_customer/pages/car_detail/car_detail.dart';
import 'package:car_rental_for_customer/pages/car_owner_detail/car_owner_detail.dart';
import 'package:car_rental_for_customer/pages/car_search/car_search.dart';
import 'package:car_rental_for_customer/pages/car_search_result/car_search_result.dart';
import 'package:car_rental_for_customer/pages/driver_detail/driver_detail.dart';
import 'package:car_rental_for_customer/pages/feedback/views/feedback_page.dart';
import 'package:car_rental_for_customer/pages/feedback_list/views/feedback_list_page.dart';
import 'package:car_rental_for_customer/pages/forgot_password/views/forgot_password_page.dart';
import 'package:car_rental_for_customer/pages/home/home.dart';
import 'package:car_rental_for_customer/pages/license/views/license_page.dart';
import 'package:car_rental_for_customer/pages/login/login.dart';
import 'package:car_rental_for_customer/pages/notification/notification.dart';
import 'package:car_rental_for_customer/pages/order_information/views/order_information_page.dart';
import 'package:car_rental_for_customer/pages/payment_webview/payment_webview.dart';
import 'package:car_rental_for_customer/pages/profile/profile.dart';
import 'package:car_rental_for_customer/pages/profile_detail/profile_detail.dart';
import 'package:car_rental_for_customer/pages/promotion_list/views/promotion_list_page.dart';
import 'package:car_rental_for_customer/pages/recharge/views/recharge_page.dart';
import 'package:car_rental_for_customer/pages/scaffold_with_nav_bar/scaffold_with_nav_bar.dart';
import 'package:car_rental_for_customer/pages/sign_up/sign_up.dart';
import 'package:car_rental_for_customer/pages/splash/splash_page.dart';
import 'package:car_rental_for_customer/pages/transaction_history/views/transaction_history_page.dart';
import 'package:car_rental_for_customer/pages/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../pages/transaction_detail/transaction_detail.dart';

class AppRoute {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  final ValueKey<String> _shellNavigationKey =
      const ValueKey<String>('Shell Navigator Key');
  late final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/splash',
        name: RouteName.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: 'sign-up',
            name: RouteName.signUp,
            builder: (context, state) => const SignUpPage(),
          ),
          GoRoute(
            path: 'forgot-password',
            name: RouteName.forgotPassword,
            builder: (context, state) => const ForgotPasswordPage(),
          ),
        ],
      ),
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        builder: (context, state, child) => ScaffoldWithNavBar(child: child),
        routes: [
          GoRoute(
            path: '/home',
            name: RouteName.home,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: HomePage(),
            ),
            routes: [
              GoRoute(
                  path: 'car-search',
                  name: RouteName.carSearch,
                  builder: (context, state) {
                    final longitude = double.tryParse(
                      state.queryParams['longitude'] ?? '',
                    );
                    final latitude = double.tryParse(
                      state.queryParams['latitude'] ?? '',
                    );
                    final startDate = DateTime.tryParse(
                      state.queryParams['start-date'] ?? '',
                    );
                    final endDate = DateTime.tryParse(
                      state.queryParams['end-date'] ?? '',
                    );
                    final address = state.queryParams['address'] ?? '';

                    return CarSearchPage(
                      longitude: longitude,
                      latitude: latitude,
                      startDate: startDate,
                      endDate: endDate,
                      address: address,
                    );
                  },
                  routes: [
                    GoRoute(
                      path: 'car-search-result',
                      name: RouteName.carSearchResult,
                      builder: (context, state) {
                        final startDate = DateTime.tryParse(
                          state.queryParams['start-date'] ?? '',
                        );
                        final endDate = DateTime.tryParse(
                          state.queryParams['end-date'] ?? '',
                        );

                        final address = state.queryParams['address'] ?? '';

                        final latitude = double.tryParse(
                          state.queryParams['latitude'] ?? '',
                        );

                        final longitude = double.tryParse(
                          state.queryParams['longitude'] ?? '',
                        );

                        final distance = int.tryParse(
                          state.queryParams['distance'] ?? '',
                        );

                        return CarSearchResultPage(
                          address: address,
                          endDate: endDate!,
                          startDate: startDate!,
                          latitude: latitude!,
                          longitude: longitude!,
                          distance: distance,
                        );
                      },
                    )
                  ]),
            ],
          ),
          GoRoute(
            path: '/profile',
            name: RouteName.profile,
            pageBuilder: (context, state) {
              return FadeTransitionPage(
                key: _shellNavigationKey,
                child: ProfilePage(),
              );
            },
            routes: [
              GoRoute(
                path: 'profile-detail',
                parentNavigatorKey: rootNavigatorKey,
                name: RouteName.profileDetail,
                builder: (context, state) => ProfileDetailPage(),
              ),
              GoRoute(
                path: 'license',
                parentNavigatorKey: rootNavigatorKey,
                name: RouteName.license,
                builder: (context, state) => CustomerLicensePage(),
              ),
            ],
          ),
          GoRoute(
              path: '/wallet',
              name: RouteName.wallet,
              pageBuilder: (context, state) => FadeTransitionPage(
                    key: _shellNavigationKey,
                    child: WalletPage(),
                  ),
              routes: [
                GoRoute(
                  path: 'transaction-history',
                  name: RouteName.transactionHistory,
                  builder: (context, state) {
                    return TransactionHistoryPage();
                  },
                ),
                GoRoute(
                  path: 'transaction-detail',
                  name: RouteName.transactionDetail,
                  builder: (context, state) {
                    final transactionId = state.queryParams['transaction-id'];
                    return TransactionDetailPage(
                      transactionId: transactionId,
                    );
                  },
                ),
                GoRoute(
                    path: 'recharge',
                    name: RouteName.recharge,
                    builder: (context, state) {
                      return RechargePage();
                    },
                    routes: [
                      GoRoute(
                        path: 'payment-webview',
                        name: RouteName.paymentWebview,
                        parentNavigatorKey: rootNavigatorKey,
                        builder: (context, state) {
                          final url = state.queryParams['url'] ?? '';

                          return PaymentWebviewPage(
                            url: url,
                          );
                        },
                      ),
                    ]),
              ]),
          GoRoute(
            path: '/notification',
            name: RouteName.notification,
            pageBuilder: (context, state) => FadeTransitionPage(
              key: _shellNavigationKey,
              child: NotificationPage(),
            ),
          ),
          GoRoute(
              path: '/activity',
              name: RouteName.activity,
              pageBuilder: (context, state) => FadeTransitionPage(
                    key: _shellNavigationKey,
                    child: ActivityPage(),
                  ),
              routes: [
                GoRoute(
                  path: 'order-information',
                  name: RouteName.orderInformation,
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (context, state) {
                    final orderId = state.queryParams['order-id'];

                    return OrderInformationPage(
                      orderId: orderId,
                    );
                  },
                ),
              ]),
        ],
      ),
      GoRoute(
        path: '/car-detail',
        name: RouteName.carDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final String carId = state.queryParams['car-id'] ?? '';

          final startDate = DateTime.tryParse(
            state.queryParams['start-date'] ?? '',
          );
          final endDate = DateTime.tryParse(
            state.queryParams['end-date'] ?? '',
          );

          final address = state.queryParams['address'];

          final latitude = double.tryParse(
            state.queryParams['latitude'] ?? '',
          );

          final longitude = double.tryParse(
            state.queryParams['longitude'] ?? '',
          );
          return CarDetailPage(
            carId: carId,
            address: address,
            endDate: endDate,
            startDate: startDate,
            latitude: latitude,
            longitude: longitude,
          );
        },
      ),
      GoRoute(
        path: '/promotion-list',
        name: RouteName.promotionList,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          return PromotionListPage();
        },
      ),
      GoRoute(
        path: '/car-booking-confirmation',
        name: RouteName.carBookingConfirmation,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carId = state.queryParams['car-id'];

          final startDate = DateTime.tryParse(
            state.queryParams['start-date'] ?? '',
          );
          final endDate = DateTime.tryParse(
            state.queryParams['end-date'] ?? '',
          );

          final address = state.queryParams['address'];

          final latitude = double.tryParse(
            state.queryParams['latitude'] ?? '',
          );

          final longitude = double.tryParse(
            state.queryParams['longitude'] ?? '',
          );

          final promotionId = state.queryParams['promotion-id'];

          final carDeliveryCost = double.tryParse(
            state.queryParams['car-delivery-cost'] ?? '',
          );

          final hasDriver = state.queryParams['has-driver'] == 'true';

          return CarBookingConfirmationPage(
            carId: carId,
            address: address,
            endDate: endDate,
            startDate: startDate,
            latitude: latitude,
            longitude: longitude,
            promotionId: promotionId,
            carDeliveryCost: carDeliveryCost,
            hasDriver: hasDriver,
          );
        },
      ),
      GoRoute(
        path: '/car-owner-detail',
        name: RouteName.carOwnerDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carOwnerId = state.queryParams['car-owner-id'] ?? '';

          return CarOwnerDetailPage(
            carOwnerId: carOwnerId,
          );
        },
      ),
      GoRoute(
        path: '/driver-detail',
        name: RouteName.driverDetail,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final driverId = state.queryParams['driver-id'] ?? '';

          return DriverDetailPage(
            driverId: driverId,
          );
        },
      ),
      GoRoute(
        path: '/feedback',
        name: RouteName.feedback,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final orderId = state.queryParams['order-id'];
          final driverId = state.queryParams['driver-id'];
          final carId = state.queryParams['car-id'];
          final customerId = state.queryParams['customer-id'];
          final feedbackTypes = FeedbackType.values.where((element) {
            return element.name == state.queryParams['feedback-type'];
          });

          FeedbackType feedbackType = FeedbackType.driver;

          if (feedbackTypes.isNotEmpty) {
            feedbackType = feedbackTypes.first;
          }

          return FeedbackPage(
            orderId: orderId,
            driverId: driverId,
            carId: carId,
            feedbackType: feedbackType,
            customerId: customerId,
          );
        },
      ),
      GoRoute(
        path: '/feedback-list',
        name: RouteName.feedbackList,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) {
          final carId = state.queryParams['car-id'];
          final driverId = state.queryParams['driver-id'];

          return FeedbackListPage(
            carId: carId,
            driverId: driverId,
          );
        },
      ),
    ],
    initialLocation: '/splash',
    observers: [NavObserver()],
    debugLogDiagnostics: true,
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  /// Creates a [FadeTransitionPage].
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
  }) : super(
            key: key,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation.drive(_curveTween),
                  child: child,
                ),
            child: child);

  static final CurveTween _curveTween = CurveTween(curve: Curves.easeIn);
}
