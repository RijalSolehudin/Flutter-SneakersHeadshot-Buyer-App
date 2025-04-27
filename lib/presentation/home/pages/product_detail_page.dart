import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/checkout_logic/checkout_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../dialog/add_to_cart_success.dart';
// import 'cart_page.dart';

class ProductDetailPage extends StatelessWidget {
  final Products item;
  final Store store;
  const ProductDetailPage({
    super.key,
    required this.item,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CartPage(
                store: store,
              ));
            },
            icon: Assets.icons.cartCircle.svg(),
          ),
          const SpaceWidth(8.0),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: CachedNetworkImage(
              imageUrl: "${Variables.baseUrlApp}/storage/${item.image}",
              height: 300.0,
              width: context.deviceWidth,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
          const SpaceHeight(30.0),
          Text(
            item.name ?? '',
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SpaceHeight(10.0),
          Text(
            item.price!.currencyFormat,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
          const SpaceHeight(20.0),
          const Divider(),
          const SpaceHeight(24.0),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              store.name ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Row(
              children: [
                const Text('Official Store'),
                const SpaceWidth(5.0),
                Assets.icons.shieldDone.svg(),
              ],
            ),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: Image.network(
                '${Variables.baseUrlApp}/storage/${store.photo}',
                width: 45.0,
                height: 45.0,
                fit: BoxFit.cover,
              ),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const SpaceHeight(30.0),
          const Text(
            'Description Product',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SpaceHeight(15.0),
          Text(
            item.description ?? '',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () {
            context.read<CheckoutBloc>().add(CheckoutEvent.addItem(item));
            showDialog(
              context: context,
              builder: (context) {
                return const AddToCartSuccess();
              },
            );

            // Future.delayed(
            //   const Duration(seconds: 2),
            //   () {
            //     if (context.mounted) {
            //       Navigator.pop(context);
            //     }
            //   },
            // );
          },
          label: 'Add to Cart',
        ),
      ),
    );
  }
}
