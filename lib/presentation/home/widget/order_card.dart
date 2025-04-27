import 'package:ecommerce_buyer_app/data/model/response/get_order_histories_response_model.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../pages/order_detail_page.dart';
// import '../pages/order_detail_page.dart';

class OrderCard extends StatelessWidget {
  final OrderHistory item;
  const OrderCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final produk = item.orderItems!
        .map(
          (e) => e.product!.name,
        )
        .toList();
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Status : ${(item.status == 'paid') ? "Telah dibayar" : "Belum dibayar"}',
                style: const TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Text(
            'NO RESI: ${item.shippingNumber ?? '-'}',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SpaceHeight(10.0),
          Text(
            'produk : ${produk[0]}',
            style: const TextStyle(
              color: AppColors.gray,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'Payment Number: ${item.paymentNumber ?? '-'}',
            style: const TextStyle(
              color: AppColors.gray,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'Victual Account : ${(item.paymentVaName!).toUpperCase()}',
            style: const TextStyle(
              color: AppColors.gray,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SpaceHeight(24.0),
          const Divider(),
          const SpaceHeight(10.0),
          Row(
            children: [
              const Text(
                'Total Harga : ',
                style: TextStyle(
                  color: AppColors.gray,
                ),
              ),
              Text(
                item.grandTotal!.currencyFormat,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => context.push(OrderDetailPage(
                  data: item,
                )),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: const ColoredBox(
                    color: AppColors.primary,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Detail',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
