import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/generated/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_textformfilde.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: AppSizes.DEFAULT,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonImageView(
                        svgPath: Assets.imagesVector,
                      ),
                      Row(
                        children: [
                          CommonImageView(
                            svgPath: Assets.imagesWallet,
                          ),
                          MyText(
                            text: '115.34 €',
                            color: KTertiaryColor,
                            weight: FontWeight.w500,
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    hintText: 'Search',
                    labelText: '',
                    hintTextFontColor: kQuarternaryColor,
                    controller: searchController,
                    // prefixIcon:CommonImageView(Assets.imagesTextfieldSearchIcon)),
                    backgroundColor: kWhiteColor,
                    borderRadius: 10,
                    borderColor: kQuarternaryColor,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 10,
                      bottom: 5,
                    ),
                    height: 58,
                    width: 375,
                    decoration: BoxDecoration(
                        color: Color(0xffFF6347).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Your Address',
                          color: KTertiaryColor,
                          size: 10,
                          weight: FontWeight.w300,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        MyText(
                          text:
                              'House 05, Street 458, Sector G13/1, Islamabad, Pakistan',
                          color: KTertiaryColor,
                          size: 12,
                          weight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                  // CommonImageView(svgPath: Assets.imagesAddressImage,radius: 10,)),
                  Container(
                    height: 70,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              productList(
                                title: 'ALL',
                                radius: 10,
                                height: 25,
                                ontap: () {},
                                backGroundcolor: kWhiteColor,
                                borderlineColor: kWhiteColor,
                                outlineColor: kWhiteColor,
                                fontColor: KTertiaryColor,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                              productList(
                                title: 'Bags',
                                radius: 20,
                                height: 26,
                                ontap: () {},
                                backGroundcolor: kWhiteColor,
                                borderlineColor: kWhiteColor,
                                outlineColor: kWhiteColor,
                                fontColor: KTertiaryColor,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                              productList(
                                title: 'Dresses',
                                radius: 20,
                                height: 26,
                                ontap: () {},
                                backGroundcolor: kWhiteColor,
                                borderlineColor: kWhiteColor,
                                outlineColor: kWhiteColor,
                                fontColor: KTertiaryColor,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                              productList(
                                title: 'Footwear',
                                radius: 20,
                                height: 30,
                                ontap: () {},
                                backGroundcolor: kWhiteColor,
                                borderlineColor: kWhiteColor,
                                outlineColor: kWhiteColor,
                                fontColor: KTertiaryColor,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 180,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CommonImageView(
                                imagePath: Assets.imagesHomeBanner1,
                                radius: 20,
                                height: 200.96,
                                width: 400,
                              ),
                            ],
                          );
                        }),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Popular Categories',
                          size: 14,
                          weight: FontWeight.w500,
                          color: KTertiaryColor,
                          fontFamily: AppFonts.SF_PRO_DISPLAY,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 220,
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            shrinkWrap: true,
                            childAspectRatio: 30 / 30,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              8,
                              (index) {
                                return continerImage(
                                    productImage: Assets.imagesSchoolBag,
                                    productName: 'Bages');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  productCatagories(
                      productTitle: 'Trending Products',
                      productDescription: 'Sony Headphone True\nWireless',
                      rateNumber: 4.9,
                      soldNumber: '780 Sold',
                      productPrice: '68',
                      backgroundcolor: kPrimaryColor,
                      raduis: 0,
                      image: Assets.imagesProductcard),
                  productCatagories(
                      productTitle: 'Single Products',
                      productDescription: 'Sony Headphone True\nWireless',
                      rateNumber: 4.9,
                      soldNumber: '780 Sold',
                      productPrice: '68',
                      backgroundcolor: kPrimaryColor,
                      raduis: 0,
                      image: Assets.imagesProductcard),
                  productCatagories(
                      productTitle: 'Other Products',
                      productDescription: 'Sony Headphone True\nWireless',
                      rateNumber: 4.9,
                      soldNumber: '780 Sold',
                      productPrice: '68',
                      backgroundcolor: kPrimaryColor,
                      raduis: 0,
                      image: Assets.imagesProductcard),
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          height: size.height * 0.150,
          width: size.width * 1,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconLabel(
                  iconImage: Assets.imagesHome, label: 'Home', onTap: () {}),
              iconLabel(
                iconImage: Assets.imagesHomeSearch,
                label: 'Discover',
                onTap: () {},
              ),
              iconLabel(
                  iconImage: Assets.imagesPlayButton,
                  label: 'Scroll',
                  onTap: () {}),
              iconLabel(
                  iconImage: Assets.assetsNotificationBing,
                  label: 'Notifications',
                  onTap: () {}),
              iconLabel(
                  iconImage: Assets.imagesCarry, label: 'Cart', onTap: () {}),
            ],
          ),
        ),
      ]),
    );
  }

  Widget continerImage(
      {required String productImage, required String productName}) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xffFF6347).withOpacity(0.15),
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
          ),
          child: CommonImageView(
            imagePath: productImage,
            height: 30,
            width: 30,
          ),
        ),
        MyText(text: productName),
      ],
    );
  }

  Widget productList(
      {required String title,
      required double radius,
      required double height,
      required VoidCallback ontap,
      required Color backGroundcolor,
      required Color borderlineColor,
      required Color outlineColor,
      required Color fontColor,
      required FontWeight fontWeight,
      required double fontSize}) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: MyButton(
        height: height,
        onTap: ontap,
        buttonText: title,
        radius: radius,
        backgroundColor: backGroundcolor,
        outlineColor: outlineColor,
        fontColor: fontColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }

  Widget iconLabel(
      {required String iconImage,
      required String label,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonImageView(
            svgPath: iconImage,
            height: 24,
            width: 24,
          ),
          Align(
            alignment: Alignment.center,
            child: MyText(
              text: label,
              color: KTertiaryColor,
              size: 12,
              weight: FontWeight.w400,
              fontFamily: AppFonts.SF_PRO_DISPLAY,
            ),
          ),
        ],
      ),
    );
  }

  Widget productCatagories(
      {required String productTitle,
      required String productDescription,
      required,
      required double rateNumber,
      required soldNumber,
      required double raduis,
      required String image,
      required Color backgroundcolor,
      required String productPrice}) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          MyText(
            text: productTitle,
            color: KTertiaryColor,
            size: 14,
            weight: FontWeight.w500,
            fontFamily: AppFonts.SF_PRO_DISPLAY,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: backgroundcolor,
                              borderRadius: BorderRadius.circular(raduis),
                            ),
                            child: CommonImageView(
                              imagePath: image,
                              height: 113.93,
                              width: 162.13,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: MyText(
                            text: productDescription,
                            weight: FontWeight.w500,
                            color: KTertiaryColor,
                            fontFamily: AppFonts.SF_PRO_DISPLAY,
                            size: 16,
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CommonImageView(
                            svgPath: Assets.imagesHalfStar,
                          ),
                          MyText(
                            text: '$rateNumber',
                            weight: FontWeight.w300,
                            color: KTertiaryColor,
                            fontFamily: AppFonts.SF_PRO_DISPLAY,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CommonImageView(
                            svgPath: Assets.imagesVerticalSlash,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 26.29,
                            width: 89.83,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(10.95),
                            ),
                            child: MyText(
                              text: soldNumber,
                              weight: FontWeight.w300,
                              color: kQuarternaryColor,
                              fontFamily: AppFonts.SF_PRO_DISPLAY,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      MyText(
                        text: '\$${productPrice}',
                        weight: FontWeight.w500,
                        color: KSecondaryColor,
                        fontFamily: AppFonts.SF_PRO_DISPLAY,
                        size: 24,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
