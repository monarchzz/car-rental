import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/profile/bloc/profile_bloc.dart';
import 'package:car_rental_for_customer/pages/profile/views/profile_view.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ProfileBloc(userRepository: getIt.get<UserRepository>())
        ..add(const ProfileEvent.started()),
      child: const ProfileView(),
    );
  }
}
