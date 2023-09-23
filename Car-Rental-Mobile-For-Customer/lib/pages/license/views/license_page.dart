import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/license/bloc/license_bloc.dart';
import 'package:car_rental_for_customer/pages/license/views/license_view.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerLicensePage extends StatelessWidget {
  const CustomerLicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: LicenseBloc(
        userRepository: getIt.get<UserRepository>(),
      )..add(
          const LicenseEvent.started(),
        ),
      child: const LicenseView(),
    );
  }
}
