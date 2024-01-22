import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/generated/assets.dart';
import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
import 'package:marche_social_app/view/widget/custom_textformfilde.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';

class HomeDiscoverScreen extends StatefulWidget {
  const HomeDiscoverScreen({super.key});

  @override
  State<HomeDiscoverScreen> createState() => _HomeDiscoverScreenState();
}

class _HomeDiscoverScreenState extends State<HomeDiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
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
                    CustomTextField(
                      hintText: 'Search', hintTextFontColor: kQuarternaryColor,
                      controller: searchController,
                      // prefixIcon:CommonImageView(Assets.imagesTextfieldSearchIcon)),
                      backgroundColor: kWhiteColor,
                      borderRadius: 10,
                      labelText: '',
                      borderColor: kQuarternaryColor,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height:100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                productName(image: Assets.imagesSchoolBag,
                                    productName: 'For you', backgroundColor: Color(0xffFF6347).withOpacity(0.15)),
                                SizedBox(width: 10,),
                                productName(image: Assets.imagesSchoolBag,
                                    productName: 'Bags',
                                    backgroundColor: kDeepGrayColor.withOpacity(0.5)),
                                SizedBox(width: 10,),
                                productName(image: Assets.imagesSchoolBag,
                                    productName: 'Footwear', backgroundColor:kDeepGrayColor.withOpacity(0.5)),
                                SizedBox(width: 10,),
                                productName(image: Assets.imagesSchoolBag,
                                    productName: 'Dresses', backgroundColor: kDeepGrayColor.withOpacity(0.5)),
                                SizedBox(width: 10,),
                                productName(image: Assets.imagesSchoolBag, productName: 'For you',
                                    backgroundColor:kDeepGrayColor.withOpacity(0.5) ),
                                SizedBox(width: 10,),
                                productName(image: Assets.imagesSchoolBag,
                                    productName: 'For you', backgroundColor: Color(0xffFF6347).withOpacity(0.15)),
                                SizedBox(width: 10,),
                                productName(image: Assets.imagesSchoolBag, productName: 'For you', backgroundColor:Colors.red),
                              ],
                            );
                          }),
                    ),
                    productCatagories(
                        productTitle: 'Top Selling',
                        productDescription: 'Sony Headphone True\nWireless',
                        rateNumber: 4.9,
                        soldNumber: '780 Sold',
                        productPrice:'68' ,
                        backgroundcolor: kPrimaryColor,
                        raduis :0,
                        image: Assets.imagesProductcard),
                    productCatagories(
                        productTitle: 'Suggested',
                        productDescription: 'Sony Headphone True\nWireless',
                        rateNumber: 4.9,
                        soldNumber: '780 Sold',
                        productPrice:'68' ,
                        backgroundcolor: kPrimaryColor,
                        raduis: 0,
                        image: Assets.imagesProductcard),
                    productCatagories(
                        productTitle: 'Single Products',
                        productDescription: 'Sony Headphone True\nWireless',
                        rateNumber: 4.9,
                        soldNumber: '780 Sold',
                        productPrice:'68' ,
                        backgroundcolor: kPrimaryColor,
                        raduis: 0,
                        image: Assets.imagesProductcard),
                    productCatagories(
                        productTitle: 'Other Products',
                        productDescription: 'Sony Headphone True\nWireless',
                        rateNumber: 4.9,
                        soldNumber: '780 Sold',
                        productPrice:'68' ,
                        backgroundcolor: kPrimaryColor,
                        raduis: 0,
                        image: Assets.imagesProductcard),
                    
                  ],
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
          ],
        ),
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



  Widget productName(
      {required String image,
      required String productName,
      required Color backgroundColor}) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: size.height * 0.06,
          width: size.width * 0.12,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: CommonImageView(
            imagePath: image,
            height: 30,
            width: 30,
          ),
        ),
        MyText(
          text: productName,
          color: KTertiaryColor,
          size: 10,
        )
      ],
    );
  }


  Widget productCatagories(
  {required String productTitle,
  required String productDescription,
  required,
  required double rateNumber,
  required soldNumber,
  required  double raduis,
  required String image,required Color backgroundcolor,required String  productPrice}) {
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
borderRadius: BorderRadius.circular(raduis),),
child: CommonImageView(imagePath: image,height: 113.93,width: 162.13,fit: BoxFit.cover,),
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
SizedBox(height:4,),
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
