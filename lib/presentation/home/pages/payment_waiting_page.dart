import 'package:ecommerce_buyer_app/presentation/home/pages/payment_success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../bloc/payment/payment_bloc.dart';
import '../bloc/payment_status/payment_status_bloc.dart';
import '../widget/countdown_timer.dart';

class PaymentWaitingPage extends StatelessWidget {
  final int orderId;
  const PaymentWaitingPage({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    void onTimerCompletion() {
      // timeout function
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Waiting for payment'),
      ),
      body: BlocBuilder<PaymentBloc, PaymentState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            success: (data) {
              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SpaceWidth(12.0),
                      const Flexible(
                        child: Text(
                          'Selesaikan Pembayaran Dalam',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SpaceWidth(12.0),
                      CountdownTimer(
                        minute: 1,
                        onTimerCompletion: onTimerCompletion,
                      ),
                    ],
                  ),
                  const SpaceHeight(20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Tipe Pembayaran'),
                      Text(
                        data.data!.paymentVaName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SpaceHeight(8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Tagihan'),
                      Text(
                        data.data!.grandTotal!.currencyFormatRp,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SpaceHeight(8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('No Virtual Account'),
                          Text(
                            data.data!.paymentNumber!,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                                  text: data.data!.paymentNumber!))
                              .then((_) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Copied to clipboard'),
                              duration: Duration(seconds: 1),
                              backgroundColor: AppColors.primary,
                            ));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Assets.icons.copy.svg(),
                              const SpaceWidth(4.0),
                              const Text(
                                'Copy',
                                style: TextStyle(
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<PaymentStatusBloc, PaymentStatusState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (status) {
                if (status == 'paid') {
                  context.pushReplacement(const PaymentSuccessPage());
                }
              },
              waitingPaymment: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Pembayaran belum berhasil"),
                  backgroundColor: Colors.red,
                ));
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Button.filled(
                  onPressed: () {
                    context
                        .read<PaymentStatusBloc>()
                        .add(PaymentStatusEvent.getPaymentStatus(orderId));
                  },
                  label: 'Cek Status Pembayaran',
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
