import 'package:ecommerce_buyer_app/presentation/home/bloc/checkout_logic/checkout_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/cost_estimation/cost_estimation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';

class ShippingOptionsSheet extends StatefulWidget {
  final String origin;
  final String destination;

  const ShippingOptionsSheet(
      {super.key, required this.origin, required this.destination});

  @override
  State<ShippingOptionsSheet> createState() => _ShippingOptionsSheetState();
}

class _ShippingOptionsSheetState extends State<ShippingOptionsSheet> {
  @override
  void initState() {
    context.read<CostEstimationBloc>().add(
        CostEstimationEvent.getCostEstimation(
            widget.origin, widget.destination, '1000', 'jne'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedShipping = ValueNotifier<int>(0);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              child: ColoredBox(
                color: AppColors.stroke,
                child: SizedBox(height: 4.0, width: 55.0),
              ),
            ),
          ),
          const SpaceHeight(20.0),
          BlocBuilder<CostEstimationBloc, CostEstimationState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (costData) {
                  return ValueListenableBuilder(
                    valueListenable: selectedShipping,
                    builder: (context, value, _) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item =
                            costData.rajaongkir!.results![0].costs![index];
                        return ListTile(
                          onTap: () {
                            selectedShipping.value = index;
                            context.read<CheckoutBloc>().add(
                                CheckoutEvent.addShippingService(
                                    item.service!, item.cost![0].value!));
                          },
                          title: Text(
                            '${item.service}        ${item.description} (${item.cost![0].value!.currencyFormatRp})',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text('Estimasi ${item.cost![0].etd!} hari'),
                          trailing: Icon(
                            value == index
                                ? Icons.radio_button_checked
                                : Icons.circle_outlined,
                            color: value == index
                                ? AppColors.primary
                                : AppColors.gray,
                          ),
                        );
                      },
                      itemCount: costData.rajaongkir!.results![0].costs!.length,
                    ),
                  );
                },
              );
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<CostEstimationBloc, CostEstimationState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loaded: (data) {
                    return Button.filled(
                      onPressed: () => context.pop(data.rajaongkir!.results![0]
                          .costs![selectedShipping.value]),
                      label: 'Lanjutkan',
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
