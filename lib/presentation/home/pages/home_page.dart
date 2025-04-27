import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_store/get_all_store_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_streaming_stores/get_all_streaming_stores_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_general_products/get_general_products_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/pages/livestremingpalus.dart';
import 'package:ecommerce_buyer_app/presentation/home/widget/product_card.dart';
import 'package:ecommerce_buyer_app/presentation/home/widget/product_card_copy.dart';
// import 'package:ecommerce_buyer_app/presentation/home/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
// import '../models/live_model.dart';
// import '../models/store_model.dart';
import '../widget/banner_slider.dart';
import '../widget/live_now_card.dart';
import '../widget/store_card.dart';
// import 'cart_page.dart';
// import 'live_now_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final banners = [
    Assets.images.banner.path,
    Assets.images.banner.path,
    Assets.images.banner.path,
  ];

  @override
  void initState() {
    context.read<GetAllStoreBloc>().add(const GetAllStoreEvent.getAllStore());
    context
        .read<GetAllStreamingStoresBloc>()
        .add(const GetAllStreamingStoresEvent.getAllStreamingStores());
    context
        .read<GetGeneralProductsBloc>()
        .add(const GetGeneralProductsEvent.getGeneralProducts());
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          // shape: const ContinuousRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(20),
          //         bottomRight: Radius.circular(20))),
          backgroundColor: AppColors.primary,
          actions: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.stroke,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_sharp,
                  color: AppColors.primary,
                  size: 23,
                ),
              ),
            ),
            const SpaceWidth(20.0),
          ],
          flexibleSpace: Align(
            alignment: const Alignment(0, 0.55),
            child: Container(
              width: 280,
              height: 40,
              margin: const EdgeInsets.only(right: 40),
              child: SearchInput(
                controller: searchController,
                hintText: 'Search any Product',
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<GetAllStoreBloc>()
              .add(const GetAllStoreEvent.getAllStore());
          context
              .read<GetAllStreamingStoresBloc>()
              .add(const GetAllStreamingStoresEvent.getAllStreamingStores());
        },
        child: ListView(
          // padding: const EdgeInsets.all(16.0),
          children: [
            // const SpaceHeight(24.0),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: BannerSlider(items: banners),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.adidas.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.logonike.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.nb.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.mills.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.asics.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.astec.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SpaceHeight(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.aerostret.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.airwalk.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.diadora.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.kanky.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.ortus.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.stroke)),
                  child: Image.asset(
                    Assets.images.spotec.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SpaceHeight(10),
            Container(
              height: context.deviceHeight * 1 / 19,
              width: 50,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.elliptical(45, 45))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Hot Products🔥",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: Color.fromARGB(255, 250, 250, 250),
                    ),
                  ),
                  Image.asset(
                    Assets.images.school.path,
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
            ),
            BlocBuilder<GetGeneralProductsBloc, GetGeneralProductsState>(
              builder: (context, state) {
                List<GeneralProducts> prod = [];
                state.maybeMap(
                    orElse: () {},
                    loaded: (value) {
                      prod = value.data;
                    });
                if (prod.isEmpty) {
                  return const Center(
                    child: Text("Tidak Ada List Toko"),
                  );
                }
                return Container(
                  color: const Color.fromARGB(255, 237, 237, 237),
                  padding: const EdgeInsets.fromLTRB(5, 12, 5, 12),
                  child: SizedBox(
                    width: double.infinity,
                    height: context.deviceHeight * 0.3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: prod.length,
                      itemBuilder: (context, index) => ProductCardCopy(
                        item: prod[index],
                        onCartButton: () {},
                        store: prod[index].seller!,
                      ),
                    ),
                  ),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: context.deviceHeight * 1 / 16,
                  decoration: const BoxDecoration(color: AppColors.primary),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sedang Live🔥',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 250, 250, 250),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.push(Livestremingpalus());
                        },
                        // onTap: () => context.push(const LiveNowPage()),
                        child: const Text(
                          'Lihat Semua',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SpaceHeight(5.0),
                BlocBuilder<GetAllStreamingStoresBloc,
                    GetAllStreamingStoresState>(
                  builder: (context, state) {
                    List<Store> liveStore = [];
                    state.maybeMap(
                      orElse: () {},
                      loaded: (value) {
                        liveStore = value.data;
                      },
                    );
                    if (liveStore.isEmpty) {
                      return const Center(
                        child: Text("Tidak ada toko yang sedang Live"),
                      );
                    }
                    return SizedBox(
                      width: double.infinity,
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: liveStore.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, top: 10, right: 5, left: 5),
                          child: LiveNowCard(item: liveStore[index]),
                        ),
                      ),
                    );

                    // return GridView.builder(
                    //   shrinkWrap: true,
                    //   physics: AlwaysScrollableScrollPhysics(),
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //     crossAxisCount: 2,
                    //     crossAxisSpacing: 20.0,
                    //     mainAxisSpacing: 20.0,
                    //     childAspectRatio: 9 / 12,
                    //   ),
                    //   itemCount: liveStore.length,
                    //   itemBuilder: (context, index) => LiveNowCard(
                    //     item: liveStore[index],
                    //   ),
                    // );
                  },
                ),
                Container(
                  width: context.deviceWidth * 1,
                  height: context.deviceHeight * 1 / 18,
                  padding: const EdgeInsets.only(left: 16),
                  decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.elliptical(120, 80))),
                  child: const Row(
                    children: [
                      Text(
                        'Official Store',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<GetAllStoreBloc, GetAllStoreState>(
                  builder: (context, state) {
                    List<Store> stores = [];
                    state.maybeMap(
                        orElse: () {},
                        loaded: (value) {
                          stores = value.data;
                        });
                    if (stores.isEmpty) {
                      return const Center(
                        child: Text("Tidak Ada List Toko"),
                      );
                    }
                    return Container(
                      color: AppColors.primary,
                      child: SizedBox(
                        width: double.infinity,
                        height: context.deviceHeight * 1 / 4,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: stores.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, right: 5, left: 5),
                            child: StoreCard(item: stores[index]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // BlocBuilder<GetGeneralProductsBloc, GetGeneralProductsState>(
                //   builder: (context, state) {
                //     List<GeneralProducts> product = [];
                //     List<Store?> stores = [];
                //     state.maybeMap(
                //         orElse: () {},
                //         loaded: (value) {
                //           product = value.data;
                //           stores = value.data
                //               .map(
                //                 (e) => e.seller,
                //               )
                //               .toList();
                //         });
                //     if (product.isEmpty) {
                //       return const Center(
                //         child: Text("Tidak Ada List Toko"),
                //       );
                //     }
                //     return Container(
                //       color: AppColors.primary,
                //       child: SizedBox(
                //         width: double.infinity,
                //         height: context.deviceHeight * 1 / 4,
                //         child: ListView.builder(
                //             scrollDirection: Axis.horizontal,
                //             itemCount: product.length,
                //             itemBuilder: (context, index) {
                //               Store? store = stores.firstWhere(
                //                 (element) =>
                //                     element!.id == product[index].seller!.id,
                //               );

                //               return Padding(
                //                   padding: const EdgeInsets.only(
                //                       top: 20, bottom: 20, right: 10, left: 10),
                //                   child: stores != null
                //                       ? ProductCard(
                //                           store: store!,
                //                           onCartButton: () {},
                //                           item: product[index])
                //                       : const Center(
                //                           child: CircularProgressIndicator(),
                //                         ));
                //             }),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
