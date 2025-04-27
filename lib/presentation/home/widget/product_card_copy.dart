import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/dialog/add_to_cart_success.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ProductCardCopy extends StatelessWidget {
  final GeneralProducts item;
  final Store store;
  final VoidCallback onCartButton;

  const ProductCardCopy({
    super.key,
    required this.item,
    required this.onCartButton,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.push(ProductDetailPage(item: item, store: store));
      },
      child: Container(
        width: context.deviceWidth * 0.4,
        height: context.deviceHeight * 0.4,
        margin: EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: "${Variables.baseUrlApp}/storage/${item.image}",
              width: 220,
              height: 117,
              fit: BoxFit.fitWidth,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // height: 20.0,
                    child: Text(
                      item.name!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SpaceHeight(20),
                  Text(
                    item.price!.currencyFormat,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 59, 8, 163),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SpaceWidth(10),
                Text(
                  store.city ?? '',
                  style: const TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 137, 139, 142)),
                ),
                const SpaceWidth(5),
                const Icon(
                  Icons.fire_truck_sharp,
                  color: Color.fromARGB(255, 137, 139, 142),
                  size: 18,
                ),
                SpaceWidth(25),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: AppColors.stroke,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(13))),
                  child: IconButton(
                    onPressed: () {
                      // context
                      //     .read<CheckoutBloc>()
                      //     .add(CheckoutEvent.addItem(item));
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
                    icon: Icon(Icons.shopping_bag_outlined),
                    iconSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
