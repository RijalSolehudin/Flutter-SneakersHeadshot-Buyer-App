// import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
// import 'package:ecommerce_buyer_app/presentation/home/bloc/edit_address/edit_address_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../core/core.dart';
// import '../../../data/model/request/address_request_model.dart';
// import '../../../data/model/response/city_response_model.dart';
// import '../../../data/model/response/province_response_model.dart';
// import '../../../data/model/response/subdistrict_response_model.dart';
// import '../bloc/get_addresses/get_address_bloc.dart';
// import '../bloc/get_city/get_city_bloc.dart';
// import '../bloc/get_province/get_province_bloc.dart';
// import '../bloc/get_subdistrict/get_subdistrict_bloc.dart';

// class EditAddressPage extends StatefulWidget {
//   final Address item;
//   const EditAddressPage({super.key, required this.item});

//   @override
//   State<EditAddressPage> createState() => _EditAddressPageState();
// }

// class _EditAddressPageState extends State<EditAddressPage> {
//   final dummy = ['Indonesia', 'Dummy 2', 'Dummy 3'];
//   late final TextEditingController nameController;
//   late final TextEditingController phoneNumberController;
//   late final ValueNotifier countryNotifier;
//   late final ValueNotifier provinceNotifier;
//   late final ValueNotifier cityNotifier;
//   late final ValueNotifier subdistrictNotifier;
//   late final TextEditingController addressController;
//   late final TextEditingController postalCodeController;
//   // late final TextEditingController phoneNumberController;

//   @override
//   void initState() {
//     nameController = TextEditingController(text: widget.item.receiverName);
//     phoneNumberController =
//         TextEditingController(text: widget.item.receiverName);
//     countryNotifier = ValueNotifier(widget.item.country);
//     provinceNotifier = ValueNotifier(widget.item.province);
//     cityNotifier = ValueNotifier(widget.item.city);
//     subdistrictNotifier = ValueNotifier(widget.item.district);
//     addressController = TextEditingController(text: widget.item.address);
//     postalCodeController =
//         TextEditingController(text: '${widget.item.postalCode}');
//     // phoneNumberController =
//     //     TextEditingController(text: widget.item.ph);
//     context.read<GetProvinceBloc>().add(const GetProvinceEvent.GetProvince());
//     context
//         .read<GetCityBloc>()
//         .add(GetCityEvent.getCity(int.parse(provinceNotifier.value)));
//     context
//         .read<GetSubdistrictBloc>()
//         .add(GetSubdistrictEvent.getSubdistrict(int.parse(cityNotifier.value)));
//     super.initState();
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     phoneNumberController.dispose();
//     countryNotifier.dispose();
//     provinceNotifier.dispose();
//     cityNotifier.dispose();
//     subdistrictNotifier.dispose();
//     addressController.dispose();
//     postalCodeController.dispose();
//     // phoneNumberController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Your Address'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children: [
//           CustomTextField(
//             controller: nameController,
//             label: 'Name',
//             hintText: 'Masukkan nama',
//             textInputAction: TextInputAction.next,
//           ),
//           const SpaceHeight(14.0),
//           ValueListenableBuilder(
//             valueListenable: countryNotifier,
//             builder: (context, value, _) => CustomDropdown(
//               value: value,
//               items: dummy,
//               label: 'Negara / Wilayah',
//               onChanged: (value) {
//                 countryNotifier.value = value!;
//                 // context
//                 //     .read<GetProvinceBloc>()
//                 //     .add(const GetProvinceEvent.GetProvince());
//               },
//             ),
//           ),
//           const SpaceHeight(14.0),
//           BlocBuilder<GetProvinceBloc, GetProvinceState>(
//             builder: (context, state) {
//               return state.maybeWhen(
//                 orElse: () {
//                   return const Center(
//                     child: Text("Sedang memuat data..."),
//                   );
//                 },
//                 loaded: (value) {
//                   return CustomDropdown<Province>(
//                       value: value.first,
//                       items: value,
//                       label: 'Propinsi',
//                       onChanged: (value) {
//                         provinceNotifier.value = value!.provinceId;
//                         // context.read<GetCityBloc>().add(GetCityEvent.getCity(
//                         //     int.parse(provinceNotifier.value)));
//                       });
//                 },
//               );
//             },
//           ),
//           const SpaceHeight(14.0),
//           BlocBuilder<GetCityBloc, GetCityState>(
//             builder: (context, state) {
//               return state.maybeWhen(
//                 orElse: () {
//                   return const Center(
//                     child: Text("Sedang memuat Data"),
//                   );
//                 },
//                 loaded: (result) {
//                   return CustomDropdown<City>(
//                     value: result.first,
//                     items: result,
//                     label: 'Kota',
//                     onChanged: (value) {
//                       cityNotifier.value = value!.cityId;
//                       // context.read<GetSubdistrictBloc>().add(
//                       //     GetSubdistrictEvent.getSubdistrict(
//                       //         int.parse(cityNotifier.value)));
//                     },
//                   );
//                 },
//               );
//             },
//           ),
//           const SpaceHeight(14.0),
//           BlocBuilder<GetSubdistrictBloc, GetSubdistrictState>(
//             builder: (context, state) {
//               return state.maybeWhen(
//                 orElse: () {
//                   return const Center(
//                     child: Text("Sedang memuat data..."),
//                   );
//                 },
//                 loaded: (kecamatan) {
//                   return CustomDropdown<Subdistrict>(
//                       value: kecamatan.first,
//                       items: kecamatan,
//                       label: 'Kecamatan',
//                       onChanged: (value) =>
//                           subdistrictNotifier.value = value!.subdistrictId);
//                 },
//               );
//             },
//           ),
//           const SpaceHeight(14.0),
//           CustomTextField(
//             controller: addressController,
//             label: 'Alamat',
//             textInputAction: TextInputAction.next,
//           ),
//           const SpaceHeight(14.0),
//           CustomTextField(
//             controller: postalCodeController,
//             label: 'Kode Pos',
//             keyboardType: TextInputType.number,
//             textInputAction: TextInputAction.next,
//           ),
//           const SpaceHeight(14.0),
//           CustomTextField(
//             controller: phoneNumberController,
//             label: 'No Handphone',
//             keyboardType: TextInputType.number,
//           ),
//         ],
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: BlocConsumer<EditAddressBloc, EditAddressState>(
//           listener: (context, state) {
//             state.maybeWhen(
//               orElse: () {},
//               success: () {
//                 context.pop();
//                 context
//                     .read<GetAddressBloc>()
//                     .add(const GetAddressEvent.getAddress());
//                 return ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("Alamat berhasil Diubah")));
//               },
//               error: (message) {
//                 return ScaffoldMessenger.of(context)
//                     .showSnackBar(SnackBar(content: Text(message)));
//               },
//             );
//           },
//           builder: (context, state) {
//             return state.maybeWhen(
//               orElse: () {
//                 return Button.filled(
//                   onPressed: () {
//                     final data = AddressRequestModel(
//                         receiverName: nameController.text,
//                         phone: phoneNumberController.text,
//                         address: addressController.text,
//                         country: countryNotifier.value,
//                         province: provinceNotifier.value,
//                         city: cityNotifier.value,
//                         district: subdistrictNotifier.value,
//                         postalCode: postalCodeController.text);
//                     context.read<EditAddressBloc>().add(
//                         EditAddressEvent.editAddress(data, widget.item.id!));
//                   },
//                   label: 'Ubah Alamat',
//                 );
//               },
//               loading: () {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
