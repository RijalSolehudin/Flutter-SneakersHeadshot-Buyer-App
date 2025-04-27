import 'package:ecommerce_buyer_app/data/datasources/address_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/agora_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/auth_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/firebase_messaging_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/order_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/product_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:ecommerce_buyer_app/data/datasources/store_remote_datasource.dart';
import 'package:ecommerce_buyer_app/firebase_options.dart';
import 'package:ecommerce_buyer_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/auth/bloc/register/register_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/auth/pages/splash_page.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/add_address/add_address_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/cost_estimation/cost_estimation_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/edit_address/edit_address_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_addresses/get_address_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/checkout_logic/checkout_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_agora_token/get_agora_token_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_product/get_all_product_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_store/get_all_store_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_all_streaming_stores/get_all_streaming_stores_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_city/get_city_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_general_products/get_general_products_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_order_histories/get_order_histories_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_province/get_province_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/get_subdistrict/get_subdistrict_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/payment/payment_bloc.dart';
import 'package:ecommerce_buyer_app/presentation/home/bloc/waybill/waybill_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'presentation/home/bloc/payment_status/payment_status_bloc.dart';
// import 'ui/authentication/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseMessangingRemoteDatasource().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBloc(AuthRemoteDatasources()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasources()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDatasources()),
        ),
        BlocProvider(
          create: (context) => GetAllStoreBloc(StoreRemoteDatasources()),
        ),
        BlocProvider(
          create: (context) => GetAllProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => GetProvinceBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetCityBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetSubdistrictBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetAddressBloc(AddressRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AddAddressBloc(AddressRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => EditAddressBloc(AddressRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CostEstimationBloc(RajaongkirRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => PaymentBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => PaymentStatusBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetOrderHistoriesBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetAgoraTokenBloc(AgoraRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              GetAllStreamingStoresBloc(StoreRemoteDatasources()),
        ),
        BlocProvider(
          create: (context) =>
              GetGeneralProductsBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => WaybillBloc(RajaongkirRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Intensive Club batch 19',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          scaffoldBackgroundColor: AppColors.white,
          dialogBackgroundColor: AppColors.white,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.white,
          ),
          bottomSheetTheme:
              const BottomSheetThemeData(backgroundColor: AppColors.white),
          dividerTheme: const DividerThemeData(color: AppColors.stroke),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.inter(
              color: AppColors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
            centerTitle: true,
          ),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
