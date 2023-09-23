import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/pages/location_search/bloc/location_search_bloc.dart';
import 'package:car_rental_for_customer/pages/location_search/place_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationSearchBloc, LocationSearchState>(
      builder: (context, state) {
        if (state.query == null || state.query!.isEmpty) {
          return Column(
            children: [
              ListTile(
                title: const Text(
                  'Vị trí hiện tại',
                  style: TextStyle(fontSize: 14),
                ),
                leading: const Icon(Icons.location_on_outlined),
                minLeadingWidth: s12,
                onTap: () {
                  FocusScope.of(context).unfocus();
                  context.read<LocationSearchBloc>().add(
                        LocationSearchEvent.currentLocationSelected(context),
                      );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  'Địa chỉ của tôi',
                  style: TextStyle(fontSize: 14),
                ),
                leading: const Icon(Icons.bookmark_outline),
                minLeadingWidth: s12,
                onTap: () {
                  FocusScope.of(context).unfocus();
                  context.read<LocationSearchBloc>().add(
                        LocationSearchEvent.myAddressSelected(context),
                      );
                },
              ),
            ],
          );
        }
        return Container(
          color: Colors.white,
          child: ListView.separated(
            itemBuilder: (context, index) => PlaceItem(
              place: state.places[index],
              onTap: (place) {
                FocusScope.of(context).unfocus();

                context.read<LocationSearchBloc>().add(
                      LocationSearchEvent.addressSelected(
                        place,
                        context,
                      ),
                    );
              },
            ),
            separatorBuilder: (context, index) => const Divider(thickness: 1),
            itemCount: state.places.length,
            padding: const EdgeInsets.all(s08),
          ),
        );
      },
    );
  }
}
