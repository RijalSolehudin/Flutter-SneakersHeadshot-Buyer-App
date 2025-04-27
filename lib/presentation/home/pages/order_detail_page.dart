import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/get_order_histories_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:ecommerce_buyer_app/main.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/waybill/waybill_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/widget/tracking_horizontal.dart';
import 'package:ecommerce_buyer_app/presentation/home/widget/tracking_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
// import '../widget/tracking_horizontal.dart';
import '../model/track_record_model.dart';
import 'track_package_page.dart';

class OrderDetailPage extends StatefulWidget {
  final OrderHistory data;
  const OrderDetailPage({super.key, required this.data});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  void initState() {
    context.read<WaybillBloc>().add(WaybillEvent.waybill(
        widget.data.shippingNumber ?? '', widget.data.shippingService!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<TrackRecordModel> trackRecords = [
      TrackRecordModel(
        title: 'Pesanan Anda belum dibayar',
        status: TrackRecordStatus.belumBayar,
        isActive: true,
        updatedAt: DateTime.now().subtract(const Duration(days: 3)),
      ),
      TrackRecordModel(
        title: 'Pesanan Anda sedang disiapkan',
        status: TrackRecordStatus.dikemas,
        isActive: true,
        updatedAt: DateTime.now().subtract(const Duration(days: 2)),
      ),
      TrackRecordModel(
        title: 'Pesanan Anda dalam pengiriman',
        status: TrackRecordStatus.dikirim,
        isActive: true,
        updatedAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
      TrackRecordModel(
        title: 'Pesanan Anda telah tiba',
        status: TrackRecordStatus.selesai,
        isActive: true,
        updatedAt: DateTime.now(),
      ),
    ];
    final List<Product> item = widget.data.orderItems!
        .map(
          (e) => e.product!,
        )
        .toList();
    final List<String> amount = widget.data.orderItems!
        .map(
          (e) => e.quantity!,
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Order'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TrackingHorizontal(trackRecords: trackRecords),
          )
          // BlocBuilder<WaybillBloc, WaybillState>(
          //   builder: (context, state) {
          //     return state.maybeWhen(orElse: () => const Center(child: Text("No Data"),),loading: () => Center(child: CircularProgressIndicator(),),loaded: (data) {
          //        return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: TrackingHorizontal(trackRecords: data),
          //           );
          //     },);

          //   },
          // ),
          ,
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 8.0,
                  spreadRadius: 0,
                  color: AppColors.primary.withOpacity(0.16),
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: item.length,
                    itemBuilder: (context, index) {
                      return _ProductCard(
                        amount: amount[index],
                        item: item[index],
                        onTap: () {},
                      );
                    },
                  ),
                ),
                SpaceHeight(17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ongkos Kirim : "),
                    Text(
                      widget.data.shippingPrice!.currencyFormat.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Grand Total : "),
                    Text(
                      widget.data.grandTotal!.currencyFormat.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary),
                    )
                  ],
                ),
                const SpaceHeight(12.0),
                const SpaceWidth(24.0),
                const Divider(),
                const SpaceWidth(14.0),
                const Text(
                  'Info Pengiriman',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(8.0),
                Text('Penerima : ${widget.data.address!.receiverName!}'),
                const SpaceHeight(8.0),
                const Text("Alamat :"),
                Text(widget.data.address!.address!),
              ],
            ),
          ),
          const SpaceHeight(20.0),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () => context.push(TrackPackagePage(
            noResi: widget.data.shippingNumber ?? '',
          )),
          label: 'Lacak Paket',
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String amount;
  final Product item;
  final VoidCallback onTap;
  const _ProductCard({
    required this.item,
    required this.onTap,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.stroke))),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              imageUrl: "${Variables.baseUrlApp}/storage/${item.image}",
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
          const SpaceWidth(16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: context.deviceWidth * 0.50,
                child: Text(
                  item.name ?? '',
                  maxLines: 2,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
              const SpaceHeight(8.0),
              Text.rich(
                TextSpan(
                  text: 'Harga : ',
                  children: [
                    TextSpan(
                      text: item.price!.currencyFormat,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Text('Qty : ${amount.replaceAll(RegExp((r'[0().]')), '')} pcs'),
            ],
          ),
        ],
      ),
    );
  }
}
