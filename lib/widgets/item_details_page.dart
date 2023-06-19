import 'package:flutter/material.dart';

import '../core/constant/color/color.dart';
import '../core/constant/style/style.dart';
import '../models/catalog.dart';
import 'custom_app_bar.dart';

class ItemDetailsPage extends StatelessWidget {
  final Item activeItem;
  const ItemDetailsPage({super.key, required this.activeItem});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar("Title"),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.topCenter,
              height: size.height - 300,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/a1.jpg'))),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: size.height / 2.2,
                width: size.width,
                decoration: BoxDecoration(
                  color: AppColor.secondary,
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          height: 5,
                          width: 32 * 1.5,
                          decoration: BoxDecoration(
                            gradient: AppColor.gradient,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      ProductNameAndPrice(
                        name: activeItem.name,
                        discount: activeItem.price,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const locationTitle(),
                      const Spacing(),
                      Row(
                        children: const [
                          TabTitle(label: 'Details', selected: true),
                        ],
                      ),
                      const Spacing(),
                      Text(
                        'This is weekdays design-your go-to for all the latest trends, no matter who you are.' *
                            10,
                        style: AppStyle.bodyText.copyWith(color: Colors.white),
                      ),
                      const Spacing(),
                      const Spacing(),
                      Center(child: contactPageButton(size: size))
                      // Row(
                      //   children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(16),
                      //       border: Border.all(color: Colors.white)),
                      //   child: ElevatedButton(
                      //       style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all(
                      //               Colors.transparent),
                      //           shape: MaterialStateProperty.all(
                      //             RoundedRectangleBorder(
                      //                 borderRadius:
                      //                     BorderRadius.circular(16)),
                      //           ),
                      //           minimumSize: MaterialStateProperty.all(
                      //               Size(size.width / 10, 50))),
                      //       onPressed: () {},
                      //       child: const Icon(
                      //         Icons.favorite_outline,
                      //         color: Colors.white,
                      //       )),
                      // ),
                      // const SizedBox(
                      //   width: 10,
                      // ),
                      //     ElevatedButton(
                      //         style: ButtonStyle(
                      //             backgroundColor: MaterialStateProperty.all(
                      //                 AppColor.primary),
                      //             shape: MaterialStateProperty.all(
                      //                 RoundedRectangleBorder(
                      //                     borderRadius:
                      //                         BorderRadius.circular(16))),
                      //             minimumSize: MaterialStateProperty.all(
                      //                 Size(size.width * 0.8, 50))),
                      //         onPressed: () {},
                      //         child: Text('İletişim Bilgileri',
                      //             style: AppStyle.h2.copyWith(
                      //                 color: Colors.white,
                      //                 fontWeight: FontWeight.w700))),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class locationTitle extends StatelessWidget {
  const locationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text('Size',
            style: AppStyle.text
                .copyWith(color: Colors.white.withOpacity(.8), fontSize: 24)),
      ],
    );
  }
}

class contactPageButton extends StatelessWidget {
  const contactPageButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.primary),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            minimumSize: MaterialStateProperty.all(Size(size.width * 0.8, 50))),
        onPressed: () {},
        child: Text('İletişim Bilgileri',
            style: AppStyle.h2
                .copyWith(color: Colors.white, fontWeight: FontWeight.w700)));
  }
}

class TabTitle extends StatelessWidget {
  final String label;
  final bool selected;
  const TabTitle({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            label,
            style: AppStyle.text.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          if (selected)
            Container(
              width: 21,
              height: 2,
              decoration: const BoxDecoration(color: AppColor.primary),
            )
        ])
      ],
    );
  }
}

class Spacing extends StatelessWidget {
  const Spacing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
    );
  }
}

class RectButtonSelected extends StatelessWidget {
  final String label;
  const RectButtonSelected({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), gradient: AppColor.gradient),
      child: Center(
          child: Text(
        label,
        style: AppStyle.text,
      )),
    );
  }
}

class RectButton extends StatelessWidget {
  final String label;
  const RectButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: AppColor.primary)),
      child: Center(
          child: Text(
        label,
        style: AppStyle.text.copyWith(color: Colors.white),
      )),
    );
  }
}

class ProductNameAndPrice extends StatelessWidget {
  String name;
  String discount;
  ProductNameAndPrice({
    required this.name,
    required this.discount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: AppStyle.h1Light,
        ),
        Text(
          discount,
          style: AppStyle.h1Light
              .copyWith(color: AppColor.primary, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
