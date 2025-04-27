import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_addresses/get_address_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../widget/address_tile.dart';
import 'add_address_page.dart';
// import 'edit_address_page.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  int selectedIndex = 0;

  @override
  void initState() {
    context.read<GetAddressBloc>().add(const GetAddressEvent.getAddress());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Address'),
        ),
        body: BlocBuilder<GetAddressBloc, GetAddressState>(
          builder: (context, state) {
            final addresses = state.maybeMap(
              orElse: () => <Address>[],
              loaded: (value) => value.data,
            );
            if (addresses.isEmpty) {
              Center(
                child: Column(
                  children: [
                    const SpaceHeight(120.0),
                    Assets.images.locationEmpty.image(height: 140.0),
                    const SpaceHeight(70.0),
                    const Text(
                      'Opss! belum ada alamat',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SpaceHeight(16.0),
                    const Text(
                      'Tambahkan alamatmu dahulu',
                      style: TextStyle(
                        color: AppColors.gray,
                      ),
                    ),
                  ],
                ),
              );
            }
            return ListView(
              padding: const EdgeInsets.all(20.0),
              children: [
                StatefulBuilder(
                  builder: (context, setState) => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: addresses.length,
                    itemBuilder: (context, index) => AddressTile(
                      isSelected: selectedIndex == index,
                      item: addresses[index],
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      // onEditTap: () => context.push(EditAddressPage(
                      //   item: addresses[index],
                      // )),
                    ),
                    separatorBuilder: (context, index) =>
                        const SpaceHeight(16.0),
                  ),
                ),
                const SpaceHeight(40.0),
                Button.outlined(
                  onPressed: () => context.push(const AddAddressPage()),
                  label: 'Add address',
                ),
                const SpaceHeight(50.0),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<GetAddressBloc, GetAddressState>(
          builder: (context, state) {
            final addresses = state.maybeMap(
              orElse: () => <Address>[],
              loaded: (data) => data.data,
            );
            if (addresses.isEmpty) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button.filled(
                  onPressed: () => context.push(const AddAddressPage()),
                  label: 'Tambahkan Alamat',
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Button.filled(
                onPressed: () {
                  //return address isDefault
                  final address = addresses.firstWhere(
                    (element) => element.isDefault == 1,
                    orElse: () => addresses[selectedIndex],
                  );
                  context.pop(address);
                },
                label: 'Lanjutkan',
              ),
            );
          },
        )

        // MY PATTERN

        // bottomNavigationBar: BlocBuilder<GetAddressBloc, GetAddressState>(
        //   builder: (context, state) {
        //     return state.maybeWhen(
        //       orElse: () {
        //         return const Center(
        //           child: CircularProgressIndicator(),
        //         );
        //       },
        //       loaded: (data) {
        //         if (data.isEmpty) {
        //           return Padding(
        //             padding: const EdgeInsets.all(20.0),
        //             child: Button.filled(
        //               onPressed: () => context.push(const AddAddressPage()),
        //               label: 'Tambahkan Alamat',
        //             ),
        //           );
        //         }
        //         return Padding(
        //           padding: const EdgeInsets.all(20.0),
        //           child: Button.filled(
        //             onPressed: () {
        //               //return address isDefault
        //               final address = data.firstWhere(
        //                 (element) => element.isDefault == 1,
        //                 orElse: () => data.first,
        //               );
        //               context.pop(address);
        //             },
        //             label: 'Lanjutkan',
        //           ),
        //         );
        //       },
        //     );
        //   },
        // )
        );
  }
}
