import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/profile_detail/bloc/profile_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/profile_detail/views/profile_detail_view.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ProfileDetailBloc(userRepository: getIt.get<UserRepository>())
        ..add(const ProfileDetailEvent.started()),
      child: const ProfileDetailView(),
    );
  }
}
