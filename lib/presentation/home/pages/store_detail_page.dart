import 'package:ecommerce_buyer_app/data/model/response/all_products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/products_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_product/get_all_product_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../widget/product_card.dart';
import '../widget/store_header.dart';
// import 'cart_page.dart';

class StoreDetailPage extends StatefulWidget {
  final Store store;
  const StoreDetailPage({super.key, required this.store});

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  void initState() {
    context
        .read<GetAllProductBloc>()
        .add(GetAllProductEvent.getAllProduct(widget.store.id!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.store.name ?? ''),
        actions: [
          IconButton(
            onPressed: () {
              context.push(CartPage(
                store: widget.store,
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
          StoreHeader(
            store: widget.store,
          ),
          const SpaceHeight(40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Produk',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SpaceHeight(4.0),
                  Text(
                    'Klik untuk lihat detail produk',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Lihat semua',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SpaceHeight(16.0),
          BlocBuilder<GetAllProductBloc, GetAllProductState>(
            builder: (context, state) {
              List<Products> products = [];
              state.maybeMap(
                orElse: () {},
                loaded: (value) {
                  products = value.products;
                },
                error: (value) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(value.message),
                    backgroundColor: Colors.red,
                  ));
                },
              );
              if (products.isEmpty) {
                return const Center(
                  child: Text("Tidak ada produk"),
                );
              }
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.63,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (context, index) => ProductCard(
                  store: widget.store,
                  item: products[index],
                  onCartButton: () {},
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
