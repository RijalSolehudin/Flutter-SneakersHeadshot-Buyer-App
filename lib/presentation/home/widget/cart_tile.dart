import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/order_item_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/checkout_logic/checkout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';

class CartTile extends StatelessWidget {
  final OrderItemModel data;
  const CartTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: AppColors.stroke),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: CachedNetworkImage(
                  imageUrl:
                      '${Variables.baseUrlApp}/storage/${data.products.image}',
                  width: 88.0,
                  height: 82.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SpaceWidth(16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      data.products.name ?? '',
                      maxLines: 2,
                      softWrap: true,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    data.products.price!.currencyFormat,
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // if (data.quantity > 1) {
                            //   data.quantity--;
                            //   setState(() {});
                            // }

                            context
                                .read<CheckoutBloc>()
                                .add(CheckoutEvent.removeItem(data.products));
                          },
                          icon: const Icon(
                            Icons.remove_circle,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          '${data.quantity}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            context
                                .read<CheckoutBloc>()
                                .add(CheckoutEvent.addItem(data.products));
                          },
                          icon: const Icon(
                            Icons.add_circle,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              context
                  .read<CheckoutBloc>()
                  .add(CheckoutEvent.resetItem(data.products));
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.delete_outline,
                  color: AppColors.red,
                ),
                SpaceWidth(4.0),
                Text(
                  'Delete',
                  style: TextStyle(
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
