import 'package:ecommerce_buyer_app/data/model/order_item_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/address_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/cost_estimation_response_model.dart';
import 'package:ecommerce_buyer_app/data/model/response/store_response_model.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/checkout_logic/checkout_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_addresses/get_address_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_product/get_all_product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';

import '../widget/address_tile.dart';
import '../widget/cart_tile.dart';
import '../widget/shipping_options_sheet.dart';
import '../widget/shipping_tile.dart';
import 'address_page.dart';
import 'payment_detail_page.dart';
// import '../widgets/address_tile.dart';
// import '../widgets/cart_tile.dart';
// import '../widgets/shipping_options_sheet.dart';
// import '../widgets/shipping_tile.dart';
// import 'address_page.dart';
// import 'payment_detail_page.dart';

class CartPage extends StatefulWidget {
  final Store store;
  const CartPage({
    super.key,
    required this.store,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Address? addressSelected;
  ResultCost? shippingSelected;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<GetAddressBloc>().add(GetAddressEvent.getAddress());
        context
            .read<GetAllProductBloc>()
            .add(GetAllProductEvent.getAllProduct(widget.store.id!));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Your Cart'),
        ),
        body:
            //  products.isEmpty
            // ? Center(
            //     child: Column(
            //       children: [
            //         const SpaceHeight(150.0),
            //         Assets.images.cartEmpty.image(height: 140.0),
            //         const SpaceHeight(50.0),
            //         const Text(
            //           'Opss! Keranjangmu masih kosong',
            //           style: TextStyle(
            //             fontSize: 16.0,
            //             color: AppColors.primary,
            //             fontWeight: FontWeight.w500,
            //           ),
            //         ),
            //         const SpaceHeight(8.0),
            //         const Text(
            //           'Temukan produk di toko favoritmu',
            //           style: TextStyle(
            //             color: AppColors.gray,
            //           ),
            //         ),
            //       ],
            //     ),
            //   )
            // :
            BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            List<OrderItemModel> newProducts = [];
            state.maybeMap(
              orElse: () {},
              loaded: (value) {
                newProducts = value.products;
              },
            );
            return ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: newProducts.length,
                  itemBuilder: (context, index) => CartTile(
                    data: newProducts[index],
                  ),
                  separatorBuilder: (context, index) => const SpaceHeight(16.0),
                ),
                const SpaceHeight(16.0),
                if (addressSelected != null)
                  AddressTile(
                    isSelected: true,
                    item: addressSelected!,
                    // onTap: () {},
                    onTap: () async {
                      addressSelected =
                          await context.push<Address>(const AddressPage());
                      setState(() {});
                    },
                  )
                else
                  Button.outlined(
                    // onPressed: () {},
                    onPressed: () async {
                      addressSelected =
                          await context.push<Address>(const AddressPage());
                      context.read<CheckoutBloc>().add(
                          CheckoutEvent.addAddressId(addressSelected!.id!));
                      setState(() {});
                    },
                    label: 'Pilih Alamat Pengiriman',
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                    ),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                const SpaceHeight(16.0),
                if (shippingSelected != null)
                  ShippingTile(
                    item: shippingSelected!,
                    // onTap: () {},
                    onTap: () async {
                      shippingSelected = await showModalBottomSheet<ResultCost>(
                        context: context,
                        useSafeArea: true,
                        isScrollControlled: true,
                        builder: (BuildContext context) => ShippingOptionsSheet(
                          origin: widget.store.district!,
                          destination: addressSelected!.district!,
                        ),
                      );
                      setState(() {});
                    },
                  )
                else
                  Button.outlined(
                    // onPressed: () {},
                    onPressed: () async {
                      if (addressSelected == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("isi Alamat terlebih dahulu")));
                      } else {
                        shippingSelected =
                            await showModalBottomSheet<ResultCost>(
                          context: context,
                          useSafeArea: true,
                          isScrollControlled: true,
                          builder: (BuildContext context) =>
                              ShippingOptionsSheet(
                            origin: widget.store.district!,
                            destination: addressSelected!.district!,
                          ),
                        );

                        setState(() {});
                      }
                    },
                    label: 'Pilih Pengiriman',
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                    ),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (products, totalQuantity, totalPrice, addressId,
                  shippingService, shippingCost, paymentVaName, paymentMethod) {
                final grandTotal = totalPrice + shippingCost;
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: products.isEmpty
                      ? Button.filled(
                          onPressed: () {
                            context.popToRoot();
                          },
                          label: 'Mulai Belanja',
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text('Subtotal Harga Produk'),
                                const Spacer(),
                                Text(
                                  totalPrice.currencyFormatRp,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(10.0),
                            Row(
                              children: [
                                const Text('Biaya Pengiriman'),
                                const Spacer(),
                                Text(
                                  shippingCost.currencyFormatRp,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(10.0),
                            Row(
                              children: [
                                const Text(
                                  'Total Belanja',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  grandTotal.currencyFormatRp,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(10.0),
                            const Divider(),
                            const SpaceHeight(16.0),
                            Button.filled(
                              disabled: shippingSelected == null ||
                                  addressSelected == null,
                              // onPressed: () {},

                              onPressed: () => context.push(PaymentDetailPage(
                                store: widget.store,
                              )),
                              label: 'Pilih Pembayaran',
                            ),
                          ],
                        ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
