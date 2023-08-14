import 'package:flutter/material.dart';
import 'package:prueba_liverpool/common/appbar/custom_appbar.dart';
import 'package:prueba_liverpool/constants/colors.dart';

import '../../features/products/widgets/sort_option/custom_sort_option.dart';
import '../icon/custom_icon.dart';

class CustomPage extends StatelessWidget {
  final Widget body;
  final Widget appBar;

  const CustomPage({
    required this.body,
    required this.appBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.secondaryCharcoal,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            elevation: 0,
            backgroundColor: MainColor.primaryColor,
            leading: const CustomIcon(
              iconData: Icons.menu,
            ),
            title: Center(
              child: Image.asset(
                'assets/images/liverpool/Liverpool_logo_title.png',
                width: 120,
              ),
            ),
            actions: const [
              CustomSortOption(),
            ],
            bottom: const CustomAppbar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                body,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {},
          icon: const CustomIcon(
            iconData: Icons.shopping_bag,
          ),
        ),
      ),
    );
  }
}
