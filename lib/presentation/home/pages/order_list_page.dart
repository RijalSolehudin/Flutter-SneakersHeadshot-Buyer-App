import 'package:ecommerce_buyer_app/presentation/home/bloc/get_order_histories/get_order_histories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/components.dart';
import '../widget/order_card.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({super.key});

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  void initState() {
    context
        .read<GetOrderHistoriesBloc>()
        .add(const GetOrderHistoriesEvent.getOrderHistories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context
              .read<GetOrderHistoriesBloc>()
              .add(const GetOrderHistoriesEvent.getOrderHistories());
        },
        child: BlocBuilder<GetOrderHistoriesBloc, GetOrderHistoriesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (data) {
                final sorteData = List.from(data);
                sorteData.sort(
                  (a, b) {
                    return DateTime.parse(b.createdAt.toString())
                        .compareTo(DateTime.parse(a.createdAt.toString()));
                  },
                );
                return ListView.separated(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: sorteData.length,
                  separatorBuilder: (context, index) => const SpaceHeight(12.0),
                  itemBuilder: (context, index) => OrderCard(
                    item: sorteData[index],
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
