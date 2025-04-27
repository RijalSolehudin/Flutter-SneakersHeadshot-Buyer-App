import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/get_order_histories_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/checkout_logic/checkout_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/dialog/add_to_cart_success.dart';
import 'package:ecommerce_buyer_app/presentation/home/pages/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';

class ProductCard extends StatelessWidget {
  final Products item;
  final Store store;
  final VoidCallback onCartButton;

  const ProductCard({
    super.key,
    required this.item,
    required this.onCartButton,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(ProductDetailPage(item: item, store: store));
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.stroke),
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: "${Variables.baseUrlApp}/storage/${item.image}",
              width: context.deviceWidth,
              height: 160.0,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                    child: Text(
                      item.name!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          item.price!.currencyFormat,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context
                              .read<CheckoutBloc>()
                              .add(CheckoutEvent.addItem(item));
                          showDialog(
                            context: context,
                            builder: (context) => const AddToCartSuccess(),
                          );

                          // Future.delayed(
                          //   const Duration(milliseconds: 1300),
                          //   () {
                          //     if (context.mounted) {
                          //       context.pop();
                          //     }
                          //   },
                          // );
                        },
                        icon: Assets.icons.cartShopping.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColors.primary,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.0,
                        child: Text(
                          store.city ?? '',
                          style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 137, 139, 142)),
                        ),
                      ),
                      const SpaceWidth(10),
                      const Icon(
                        Icons.fire_truck_sharp,
                        color: Color.fromARGB(255, 137, 139, 142),
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
