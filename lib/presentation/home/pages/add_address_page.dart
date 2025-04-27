import 'package:ecommerce_buyer_app/data/model/request/address_request_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/city_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/province_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/subdistrict_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/add_address/add_address_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_addresses/get_address_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_city/get_city_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_province/get_province_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_subdistrict/get_subdistrict_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final dummy = ['Indonesia'];
  late final TextEditingController nameController;
  late final ValueNotifier countryNotifier;
  late final ValueNotifier provinceNotifier;
  late final ValueNotifier cityNotifier;
  late final ValueNotifier subdistrictNotifier;
  late final TextEditingController addressController;
  late final TextEditingController postalCodeController;
  late final TextEditingController phoneNumberController;
  bool isdefault = false;

  @override
  void initState() {
    nameController = TextEditingController();
    countryNotifier = ValueNotifier(dummy.first);
    provinceNotifier = ValueNotifier('');
    cityNotifier = ValueNotifier('');
    subdistrictNotifier = ValueNotifier('');
    addressController = TextEditingController();
    postalCodeController = TextEditingController();
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    countryNotifier.dispose();
    provinceNotifier.dispose();
    cityNotifier.dispose();
    subdistrictNotifier.dispose();
    addressController.dispose();
    postalCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Your Address'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomTextField(
            controller: nameController,
            label: 'Name',
            hintText: 'Masukkan nama',
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(14.0),
          ValueListenableBuilder(
            valueListenable: countryNotifier,
            builder: (context, value, _) => CustomDropdown(
              value: value,
              items: dummy,
              label: 'Negara / Wilayah',
              onChanged: (value) {
                countryNotifier.value = value!;
                context
                    .read<GetProvinceBloc>()
                    .add(const GetProvinceEvent.GetProvince());
              },
            ),
          ),
          const SpaceHeight(14.0),
          BlocBuilder<GetProvinceBloc, GetProvinceState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: Text("Sedang memuat data..."),
                  );
                },
                loaded: (value) {
                  return CustomDropdown<Province>(
                      value: value.first,
                      items: value,
                      label: 'Propinsi',
                      onChanged: (value) {
                        provinceNotifier.value = value!.provinceId;
                        context.read<GetCityBloc>().add(GetCityEvent.getCity(
                            int.parse(provinceNotifier.value)));
                      });
                },
              );
            },
          ),
          const SpaceHeight(14.0),
          BlocBuilder<GetCityBloc, GetCityState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: Text("Sedang memuat Data"),
                  );
                },
                loaded: (result) {
                  return CustomDropdown<City>(
                    value: result.first,
                    items: result,
                    label: 'Kota',
                    onChanged: (value) {
                      cityNotifier.value = value!.cityId;
                      context.read<GetSubdistrictBloc>().add(
                          GetSubdistrictEvent.getSubdistrict(
                              int.parse(cityNotifier.value)));
                    },
                  );
                },
              );
            },
          ),
          const SpaceHeight(14.0),
          BlocBuilder<GetSubdistrictBloc, GetSubdistrictState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: Text("Sedang memuat data..."),
                  );
                },
                loaded: (kecamatan) {
                  return CustomDropdown<Subdistrict>(
                      value: kecamatan.first,
                      items: kecamatan,
                      label: 'Kecamatan',
                      onChanged: (value) =>
                          subdistrictNotifier.value = value!.subdistrictId);
                },
              );
            },
          ),
          const SpaceHeight(14.0),
          CustomTextField(
            controller: addressController,
            label: 'Alamat',
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(14.0),
          CustomTextField(
            controller: postalCodeController,
            label: 'Kode Pos',
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(14.0),
          CustomTextField(
            controller: phoneNumberController,
            label: 'No Handphone',
            keyboardType: TextInputType.number,
          ),
          const SpaceHeight(14.0),
          Row(
            children: [
              Checkbox(
                value: isdefault,
                onChanged: (value) {
                  setState(() {
                    isdefault = value!;
                  });
                },
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddAddressBloc, AddAddressState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: () {
                context.pop();
                context
                    .read<GetAddressBloc>()
                    .add(const GetAddressEvent.getAddress());
                return ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Alamat berhasil ditambahkan")));
              },
              error: (message) {
                return ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Button.filled(
                  onPressed: () {
                    final data = AddressesRequestModel(
                      receiverName: nameController.text,
                      phoneNumber: phoneNumberController.text,
                      address: addressController.text,
                      country: countryNotifier.value,
                      province: provinceNotifier.value,
                      city: cityNotifier.value,
                      district: subdistrictNotifier.value,
                      postalCode: postalCodeController.text,
                    );
                    context
                        .read<AddAddressBloc>()
                        .add(AddAddressEvent.addAddress(data));
                  },
                  label: 'Tambahkan Alamat',
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
