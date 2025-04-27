import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_buyer_app/core/constants/variables.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../pages/store_detail_page.dart';
// import '../pages/store_detail_page.dart';

class StoreCard extends StatelessWidget {
  final Store item;
  const StoreCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(StoreDetailPage(
        store: item,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              width: context.deviceWidth * 2 / 7,
              height: context.deviceHeight * 1 / 7,
              fit: BoxFit.cover,
              imageUrl: "${Variables.baseUrlApp}/storage/${item.photo}",
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
          const SpaceHeight(8.0),
          // SizedBox(
          //   width: context.deviceWidth * 2 / 7,
          //   child: Text(
          //     item.name!,
          //     maxLines: 1,
          //     overflow: TextOverflow.ellipsis,
          //     style: const TextStyle(
          //         fontWeight: FontWeight.w600, color: AppColors.white),
          //   ),
          // ),
          Row(
            children: [
              Assets.icons.location.svg(),
              const SpaceWidth(4.0),
              SizedBox(
                width: context.deviceWidth * 1 / 5,
                child: Text(
                  item.address!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
