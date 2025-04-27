// import 'package:ecommerce_buyer_app/presentation/home/pages/cart_page.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AddToCartSuccess extends StatelessWidget {
  // final Products products;
  const AddToCartSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            size: 126.0,
            color: AppColors.primary,
          ),
          SpaceHeight(20.0),
          Text(
            'Seep !',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SpaceHeight(16.0),
          Text(
            'Produk berhasil ditambahkan kedalam keranjang',
            style: TextStyle(
              color: AppColors.gray,
            ),
            textAlign: TextAlign.center,
          ),
          // const SpaceHeight(16.0),
          // Button.filled(
          //   onPressed: () {
          //     context.push(CartPage(store: st,));
          //   },
          //   label: 'Lihat Keranjang',
          //   borderRadius: 16.0,
          // ),
        ],
      ),
    );
  }
}
