import 'package:flutter/material.dart';
import 'package:prueba_liverpool/common/button/custom_outline_button.dart';
import 'package:prueba_liverpool/common/padding/custom_padding.dart';

import '../../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../button/custom_button.dart';
import '../icon/custom_icon.dart';

class CustomProfileBackPage extends StatelessWidget {
  final Widget body;
  final String heroTag;
  final String? urlImageBackground;
  final String category;

  const CustomProfileBackPage({
    required this.body,
    required this.urlImageBackground,
    required this.heroTag,
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.secondaryCharcoal,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 350.0,
              actions: [
                IconButton(
                  icon: const CustomIcon(
                    iconData: Icons.favorite_border_rounded,
                    color: MainColor.primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
              leading: IconButton(
                icon: const CustomIcon(
                  iconData: Icons.arrow_back_ios_new,
                  color: MainColor.primaryColor,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Background(
                  urlImageBackground: urlImageBackground,
                  heroTag: heroTag,
                  category: category,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: body,
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        Column(
          children: const [
            CustomButton(
              titleButton: 'Pagar ahora',
            ),
            SizedBox(
              height: spacingXS_8,
            ),
            CustomOutlineButton(
              titleButton: 'Aregar a mi bolsa',
            )
          ],
        )
      ],
    );
  }
}

class Background extends StatelessWidget {
  final String? urlImageBackground;
  final String heroTag;
  final String category;

  const Background({
    required this.urlImageBackground,
    required this.heroTag,
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              urlImageBackground ??
                  'https://logowik.com/content/uploads/images/flutter5786.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomPadding(
          typePadding: TypePadding.all,
          padding: spacingXS_8,
          child: Stack(
            children: [
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Chip(
                  backgroundColor: MainColor.primaryColor100,
                  label: Text(
                    category,
                    style: const TextStyle(
                      fontSize: spacingS_12,
                      color: MainColor.primaryWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
