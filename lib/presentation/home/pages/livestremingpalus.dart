import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../dialog/performa_live_dialog.dart';
import '../model/product_model.dart';
import '../model/chat_model.dart';

class Livestremingpalus extends StatefulWidget {
  const Livestremingpalus({super.key});

  @override
  State<Livestremingpalus> createState() => _LivestremingpalusState();
}

class _LivestremingpalusState extends State<Livestremingpalus> {
  final messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.images.livestreamDummy.image(
            width: context.deviceWidth,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SpaceHeight(50.0),
                const Text(
                  'Promo Spesial Live',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SpaceHeight(17.0),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColors.black.withOpacity(0.32),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.white,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                Assets.images.logonike.path,
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,

                                // placeholder: (context, url) => const Center(
                                //   child: CircularProgressIndicator(),
                                // ),
                              ),
                            ),
                          ),
                          const SpaceWidth(7.0),
                          const Text(
                            'Nike official Store',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                          const SpaceWidth(7.0),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => const PerformaLiveDialog(),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: AppColors.black.withOpacity(0.32),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SpaceWidth(5.0),
                            Icon(
                              Icons.visibility_outlined,
                              color: AppColors.white,
                            ),
                            SpaceWidth(7.0),
                            Text(
                              '5',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                            SpaceWidth(16.0),
                          ],
                        ),
                      ),
                    ),
                    const SpaceWidth(10.0),
                    Container(
                      width: 32.0,
                      height: 32.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColors.black.withOpacity(0.32),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          // context.push(const CartPage());
                        },
                        icon: Assets.icons.cartShopping.svg(),
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(14.0),
                // const ProductShowing(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              AppColors.black.withOpacity(0.46),
              AppColors.black,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 180.0,
              child: SingleChildScrollView(
                child: Column(
                  children: chats
                      .map(
                        (item) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                              imageUrl: item.imageUrl,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                            ),
                          ),
                          title: RichText(
                            text: TextSpan(
                              text: '${item.name} ',
                              children: [
                                TextSpan(
                                  text: item.message,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SpaceHeight(11.0),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: GestureDetector(
                onTap: () {},
                // context.push(ProductDetailPage(item: products.first)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: ColoredBox(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              Assets.images.nike.path,
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
                                width: 150,
                                child: Text(
                                  "Nike Air force 1 - Mid Stussy Black White",
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                              Text(
                                products.first.priceFormatted,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(
                                width: context.deviceWidth - 210.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      icon: ClipOval(
                                        child: ColoredBox(
                                          color: AppColors.primary,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child:
                                                Assets.icons.cartShopping.svg(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Button.filled(
                                      onPressed: () {},
                                      label: 'Buy Now',
                                      borderRadius: 10.0,
                                      height: 30.0,
                                      width: 110.0,
                                      fontSize: 12.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SpaceHeight(11.0),
            Row(
              children: ['Hello!!', 'Selamat Bergabung kak !', '🙂']
                  .map(
                    (item) => GestureDetector(
                      onTap: () => messageController.text = item,
                      child: Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.black.withOpacity(0.42),
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SpaceHeight(17.0),
            MessageTextField(
              controller: messageController,
              hintText: 'Type here...',
              sendTap: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
