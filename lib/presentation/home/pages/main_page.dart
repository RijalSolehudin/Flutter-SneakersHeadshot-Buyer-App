import 'package:ecommerce_buyer_app/presentation/home/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'home_page.dart';
import 'order_list_page.dart';
// import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const OrderListPage(),
    // const Center(
    //   child: Text("Order History"),
    // ),
    const Center(
      child: Text("Order History"),
    ),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 6,
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: AppColors.gray,
        selectedItemColor: AppColors.white,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.add_ic_call_outlined),
            icon: Assets.icons.home.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? AppColors.white : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.order.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? AppColors.white : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Order',
          ),
          // BottomNavigationBarItem(
          //   icon: SizedBox.shrink(),
          //   label: '',
          // ),
          BottomNavigationBarItem(
            icon: Assets.icons.chat.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? AppColors.white : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.profile.svg(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 3 ? AppColors.white : AppColors.gray,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
