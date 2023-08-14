import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';

class SkeletonProductList extends StatelessWidget {
  const SkeletonProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        padding: const EdgeInsets.only(
          top: spacingXS_8,
        ),
        itemBuilder: (context, index) {
          return const SkeletonProductItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: spacingXXS_4,
        ),
      ),
    );
  }
}

class SkeletonProductItem extends StatelessWidget {
  const SkeletonProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: MainColor.primaryWhite,
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(
            width: spacingS_12,
          ),
          Expanded(
            flex: 5,
            child: SkeletonParagraph(
              style: SkeletonParagraphStyle(
                lines: 4,
                spacing: 6,
                lineStyle: SkeletonLineStyle(
                  randomLength: true,
                  height: spacingS_12,
                  borderRadius: BorderRadius.circular(8),
                  minLength: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
