import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/models/image.dart';
import 'package:car_rental_for_customer/pages/license/bloc/license_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class LicenseView extends StatefulWidget {
  const LicenseView({super.key});

  @override
  State<LicenseView> createState() => _LicenseViewState();
}

class _LicenseViewState extends State<LicenseView> {
  List<XFile> _images = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LicenseBloc, LicenseState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final user = successState.user;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Giấy phép',
            leading: true,
            actionWidget: user.isLicenseValid || _images.isEmpty
                ? null
                : TextButton(
                    onPressed: () {
                      context.read<LicenseBloc>().add(
                            LicenseEvent.licenseUpdated(
                              images: _images,
                            ),
                          );

                      setState(() {
                        _images = [];
                      });
                    },
                    child: const Text(
                      'Cập nhật',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
          body: Column(
            children: [
              const SizedBox(height: s08),
              if (user.isLicenseValid == false)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Bạn chưa có giấy phép lái xe, vui lòng cập nhật giấy phép lái xe của bạn',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: s16),
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 3,
                            children: [
                              if (_images.isNotEmpty)
                                for (final image in _images)
                                  Container(
                                    margin: const EdgeInsets.all(8.0),
                                    child: Image.file(
                                      File(image.path),
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              else
                                for (final license
                                    in user.images ?? <ImageModel>[])
                                  Container(
                                    margin: const EdgeInsets.all(8.0),
                                    child: CachedNetworkImage(
                                      imageUrl: license.url,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        const SizedBox(height: s16),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () async {
                                  final ImagePicker picker = ImagePicker();

                                  final List<XFile> images =
                                      await picker.pickMultiImage();

                                  setState(() {
                                    _images = images;
                                  });
                                },
                                child: const Text('Chọn giấy phép'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              else
                Expanded(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Giấy phép lái xe của bạn',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: s16),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: [
                            for (final license in user.images ?? <ImageModel>[])
                              Container(
                                margin: const EdgeInsets.all(8.0),
                                child: CachedNetworkImage(
                                  imageUrl: license.url,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
