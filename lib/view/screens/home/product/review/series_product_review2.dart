// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_fonts.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/custom_textformfield.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';
//
// class HomeSeriesProductReview2Screen extends StatefulWidget {
//   const HomeSeriesProductReview2Screen({super.key});
//
//   @override
//   State<HomeSeriesProductReview2Screen> createState() =>
//       _HomeSeriesProductReview2ScreenState();
// }
//
// class _HomeSeriesProductReview2ScreenState
//     extends State<HomeSeriesProductReview2Screen> {
//   TextEditingController searchController = TextEditingController();
//   TextEditingController selectNumberController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 4,
//       child: Scaffold(
//         backgroundColor: kPrimaryColor,
//         body: SafeArea(
//           child: Padding(
//             padding: AppSizes.DEFAULT,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                           margin: EdgeInsets.only(top: 10),
//                           child: CommonImageView(
//                             svgPath: Assets.imagesBack,
//                             height: 40,
//                             width: 40,
//                           )),
//                       Container(
//                         height: size.height * 0.1,
//                         width: size.width * 0.78,
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                             bottom: 10,
//                           ),
//                           child: CustomTextField(
//                             hintText: 'Search', labelText: '',
//                             hintTextFontColor: kQuarternaryColor,
//                             controller: searchController,
//                             // prefixIcon:CommonImageView(Assets.imagesTextfieldSearchIcon)),
//                             backgroundColor: kWhiteColor,
//                             borderRadius: 40,
//                             borderColor: kQuarternaryColor,
//                             hintTextFontSize: 12,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     height: size.height * 0.38,
//                     child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: 4,
//                         itemBuilder: (BuildContext context, int index) {
//                           return Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Stack(
//                                 alignment: Alignment.bottomLeft,
//                                 children: [
//                                   CommonImageView(
//                                     imagePath: Assets.imagesSeriesShoes,
//                                     radius: 10,
//                                     height: 325,
//                                     width: 320,
//                                     fit: BoxFit.cover,
//                                   ),
//                                   Positioned(
//                                     top: 10,
//                                     left: 10,
//                                     child: CommonImageView(
//                                       imagePath: Assets.imagesSeries,
//                                       height: 22,
//                                       width: 59,
//                                     ),
//                                   ),
//                                   Positioned(
//                                     bottom: 10,
//                                     left: 10,
//                                     right: 10,
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         CommonImageView(
//                                           imagePath: Assets.imagesOneFive,
//                                           height: 23,
//                                           width: 25,
//                                         ),
//                                         CommonImageView(
//                                           imagePath: Assets.imagesHeart,
//                                           height: 25,
//                                           width: 24,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               )
//                             ],
//                           );
//                         }),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   MyText(
//                     text: 'New style versatile shoes',
//                     color: KTertiaryColor,
//                     size: 20,
//                     weight: FontWeight.w500,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           CommonImageView(
//                             svgPath: Assets.imagesFullStarImage,
//                           ),
//                           CommonImageView(
//                             svgPath: Assets.imagesFullStarImage,
//                           ),
//                           CommonImageView(
//                             svgPath: Assets.imagesFullStarImage,
//                           ),
//                           CommonImageView(
//                             svgPath: Assets.imagesFullStarImage,
//                           ),
//                           CommonImageView(
//                             svgPath: Assets.imagesFullStarImage,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       MyText(
//                           text: '4,7',
//                           size: 12,
//                           weight: FontWeight.w300,
//                           color: KSecondaryColor),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       MyText(
//                         text: '(692 Reviews)',
//                         size: 12,
//                         weight: FontWeight.w300,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       MyText(
//                         text: '€ 250',
//                         size: 20,
//                         weight: FontWeight.w500,
//                         color: KSecondaryColor,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       MyText(
//                         text: '€ 350',
//                         size: 14,
//                         weight: FontWeight.w300,
//                         color: kQuarternaryColor,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       MyText(
//                         text: '50%  OFF',
//                         size: 14,
//                         weight: FontWeight.w300,
//                         color: KSecondaryColor,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   MyText(
//                     text: 'In stock',
//                     size: 12,
//                     weight: FontWeight.w300,
//                     color: kGreenColor,
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Column(
//                         children: [
//                           MyText(
//                             text: 'Colors',
//                             size: 12,
//                             weight: FontWeight.w500,
//                             color: KTertiaryColor,
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 48.94,
//                             width: 45.94,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(
//                               7.99,
//                             )),
//                             child: CommonImageView(
//                               imagePath: Assets.imagesBlackShoe,
//                             ),
//                           ),
//                           MyText(
//                             text: 'Black',
//                             size: 10,
//                             weight: FontWeight.w300,
//                             color: KTertiaryColor,
//                           ),
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           CommonImageView(
//                             imagePath: Assets.imagesOrangeShoe,
//                             height: 48.94,
//                             width: 45.94,
//                             radius: 7.99,
//                           ),
//                           MyText(
//                             text: 'Yellow',
//                             size: 10,
//                             weight: FontWeight.w300,
//                             color: KTertiaryColor,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Column(
//                         children: [
//                           CommonImageView(
//                             imagePath: Assets.imagesWhiteShoe1,
//                             height: 48.94,
//                             width: 45.94,
//                           ),
//                           MyText(
//                             text: 'White',
//                             size: 10,
//                             weight: FontWeight.w300,
//                             color: KTertiaryColor,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   Row(
//                     children: [
//                       MyText(
//                         text: 'Size',
//                         size: 12,
//                         weight: FontWeight.w500,
//                         color: KTertiaryColor,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       CommonImageView(
//                         svgPath: Assets.imagesShoeSize31,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       CommonImageView(
//                         svgPath: Assets.imagesShoesSize32,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       CommonImageView(
//                         svgPath: Assets.imagesShoeSize33,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       CommonImageView(
//                         svgPath: Assets.imagesShoeSize34,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       CommonImageView(
//                         svgPath: Assets.imagesShoeSize35,
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       CommonImageView(
//                         svgPath: Assets.imagesShoeSize36,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 2),
//                     child: TabBar(
//                       indicatorColor: KSecondaryColor,
//                       unselectedLabelColor: Colors.black,
//                       labelColor: Colors.black,
//                       isScrollable: true,
//                       //dragStartBehavior: DragStartBehavior.down,
//                       labelPadding: EdgeInsets.symmetric(
//                         horizontal: 10.0,
//                       ),
//                       //dragStartBehavior:
//
//                       tabs: <Widget>[
//                         Tab(
//                           text: 'Description',
//                         ),
//                         Tab(
//                           text: 'Specs',
//                         ),
//                         Tab(
//                           text: 'Reviews(15)',
//                         ),
//                         Tab(
//                           text: 'Comments (100)',
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height * 0.15,
//                     child: TabBarView(
//                       children: <Widget>[
//                         Tab(
//                             text:
//                                 'The ultimate footwear marvel: these shoes are a fusion of\n'
//                                 'comfort and style, designed to elevate your every step!\n'
//                                 'every step! Crafted with premium, high-quality materials\n'
//                                 'these shoes offer a perfect blend of durability and elegance\n'
//                                 'durability and elegance. The innovative design ensures a snug fit\n'
//                                 'providing unparalleled support for your feet. Whether you are strolling\n'
//                                 'your feet. Whether you are strolling through the urban jungle or striding\n'
//                                 'along natures paths, these shoes are your ideal companion\n'
//                                 'your ideal companion. With a sleek exterior and a cushioned\n'
//                                 'interior,these shoes are more than just footwear—they are astatement piece.\n'
//                                 'footwear—they are a statement piece. Step into the future of fashion and comfort\n'
//                                 'with the se extraordinary shoes.'),
//                         Tab(
//                             text:
//                                 'Material: Lightweight and breathable mesh upper for comfort.\n'
//                                 'Sole: Cushioned EVA midsole for optimal support and shock absorption.\n'
//                                 'Traction: Non-slip rubber outsole for superior grip on various surfaces.\n'
//                                 'Design: Sleek and versatile design for everyday wear.\n'
//                                 'Closure: Lace-up closure for a secure fit.\n'
//                                 'Color Options: Available in classic black, white, and navy blue.\n'
//                                 'Sizes: Ranges from US Mens 6 to 12.\n'),
//                         Tab(
//                             text:
//                                 'xbcjhsfhgsuigvsbdafyiqwuyfqwouasdvkjc bxzj v'),
//                         Tab(
//                             text:
//                                 'The ultimate footwear marvel: these shoes are a fusion\n'
//                                 ' of comfort and style, designed to elevate your\n'
//                                 ' every step! Crafted with premium, high-quality\n'
//                                 ' materials, these shoes offer a perfect blend of\n'
//                                 ' durability and elegance. The innovative design\n'
//                                 ' ensures a snug fit,'
//                                 ' providing unparalleled support for'),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 5),
//                     child: Container(
//                       height: 174,
//                       width: 360,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: kWhiteColor,
//                         boxShadow: [
//                           BoxShadow(
//                               color: Color(0xff000000).withOpacity(0.8),
//                               blurRadius: 5)
//                         ],
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Column(
//                                 children: [
//                                   CommonImageView(
//                                     imagePath: Assets.imagesStoreImage,
//                                     height: 70,
//                                     width: 70,
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   MyText(
//                                     text: 'Al’ Ahmed Electronic Store',
//                                     size: 12,
//                                     color: KTertiaryColor,
//                                     weight: FontWeight.w500,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       MyText(
//                                         text: 'France',
//                                         size: 10,
//                                         color: KTertiaryColor,
//                                         weight: FontWeight.w300,
//                                       ),
//                                       SizedBox(
//                                         width: 10,
//                                       ),
//                                       Transform.scale(
//                                         scaleY: -0.25,
//                                         child: MyText(
//                                           text: '*',
//                                           size: 18,
//                                           color: Color(0xff9D9D9D),
//                                           weight: FontWeight.w300,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 10,
//                                       ),
//                                       MyText(
//                                         text: 'Paris',
//                                         size: 10,
//                                         color: Color(0xff9D9D9D),
//                                         weight: FontWeight.w300,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               InkWell(
//                                 child: Container(
//                                     height: size.height * 0.03,
//                                     width: size.width * 0.15,
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                       color: KSecondaryColor,
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: MyText(
//                                       text: 'Follow',
//                                       size: 12,
//                                       color: kWhiteColor,
//                                       fontFamily: AppFonts.OUTFit_DISPLAY,
//                                     )),
//                                 onTap: () {},
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Container(
//                                 alignment: Alignment.centerLeft,
//                                 height: 70,
//                                 width: 270,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffF8F8F8),
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(12.0),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           MyText(
//                                             text: 'Total Products',
//                                             size: 10,
//                                             color: KTertiaryColor,
//                                             weight: FontWeight.w300,
//                                           ),
//                                           SizedBox(
//                                             height: 10,
//                                           ),
//                                           MyText(
//                                             text: '108',
//                                             size: 14,
//                                             color: KTertiaryColor,
//                                             weight: FontWeight.w500,
//                                           ),
//                                         ],
//                                       ),
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           MyText(
//                                             text: 'Positive Rating',
//                                             size: 10,
//                                             color: KTertiaryColor,
//                                             weight: FontWeight.w300,
//                                           ),
//                                           SizedBox(
//                                             height: 10,
//                                           ),
//                                           MyText(
//                                             text: '95% (450)',
//                                             size: 14,
//                                             color: KTertiaryColor,
//                                             weight: FontWeight.w500,
//                                           ),
//                                         ],
//                                       ),
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           MyText(
//                                             text: 'Followers',
//                                             size: 10,
//                                             color: KTertiaryColor,
//                                             weight: FontWeight.w300,
//                                           ),
//                                           SizedBox(
//                                             height: 10,
//                                           ),
//                                           MyText(
//                                             text: '1.1k',
//                                             size: 14,
//                                             color: KTertiaryColor,
//                                             weight: FontWeight.w500,
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 6,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   productCatagories(
//                       productTitle: 'Related Products',
//                       productDescription: 'Sony Headphone True\nWireless',
//                       rateNumber: 4.9,
//                       soldNumber: '780 Sold',
//                       productPrice: '68',
//                       image: Assets.imagesWatchPeoduct,
//                       raduis: 8.7,
//                       backgroundcolor: kWhiteColor),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       InkWell(
//                         child: Container(
//                             height: size.height * 0.06,
//                             width: size.width * 0.65,
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               color: KSecondaryColor,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: MyText(
//                               text: 'Buy Now',
//                               size: 16,
//                               color: kWhiteColor,
//                               fontFamily: AppFonts.OUTFit_DISPLAY,
//                             )),
//                         onTap: () {},
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           color: kBlueColor,
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: CommonImageView(
//                           imagePath: Assets.imagesCartImage,
//                           height: 26.25,
//                           width: 26.25,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 45),
//                     child: Container(
//                       height: size.height * 0.06,
//                       width: size.width * 0.72,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: kWhiteColor,
//                         borderRadius: BorderRadius.circular(60),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           InkWell(
//                             child: Container(
//                               child: CommonImageView(
//                                 imagePath: Assets.imagesGreenTickCircle,
//                                 height: 38,
//                                 width: 38,
//                               ),
//                             ),
//                             onTap: () {},
//                           ),
//                           InkWell(
//                             child: Container(
//                               child: CommonImageView(
//                                 imagePath: Assets.imagesCloseCircle,
//                                 height: 38,
//                                 width: 38,
//                               ),
//                             ),
//                             onTap: () {},
//                           ),
//                           InkWell(
//                             child: Container(
//                               child: CommonImageView(
//                                 imagePath: Assets.imagesShareImage,
//                                 height: 22.17,
//                                 width: 25.33,
//                               ),
//                             ),
//                             onTap: () {},
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget productCatagories(
//       {required String productTitle,
//       required String productDescription,
//       required,
//       required double rateNumber,
//       required soldNumber,
//       required double raduis,
//       required String image,
//       required Color backgroundcolor,
//       required String productPrice}) {
//     return Padding(
//       padding: const EdgeInsets.all(9.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           MyText(
//             text: productTitle,
//             color: KTertiaryColor,
//             size: 14,
//             weight: FontWeight.w500,
//             fontFamily: AppFonts.OUTFit_DISPLAY,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           SizedBox(
//             height: 250,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Container(
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               color: backgroundcolor,
//                               borderRadius: BorderRadius.circular(raduis),
//                             ),
//                             child: CommonImageView(
//                               imagePath: image,
//                               height: 113.93,
//                               width: 162.13,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 12,
//                       ),
//                       Align(
//                           alignment: Alignment.topLeft,
//                           child: MyText(
//                             text: productDescription,
//                             weight: FontWeight.w500,
//                             color: KTertiaryColor,
//                             fontFamily: AppFonts.OUTFit_DISPLAY,
//                             size: 16,
//                           )),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           CommonImageView(
//                             svgPath: Assets.imagesHalfStar,
//                           ),
//                           MyText(
//                             text: '$rateNumber',
//                             weight: FontWeight.w300,
//                             color: KTertiaryColor,
//                             fontFamily: AppFonts.OUTFit_DISPLAY,
//                             size: 16,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           CommonImageView(
//                             svgPath: Assets.imagesVerticalSlash,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             alignment: Alignment.center,
//                             height: 26.29,
//                             width: 89.83,
//                             decoration: BoxDecoration(
//                               color: kWhiteColor,
//                               borderRadius: BorderRadius.circular(10.95),
//                             ),
//                             child: MyText(
//                               text: soldNumber,
//                               weight: FontWeight.w300,
//                               color: kQuarternaryColor,
//                               fontFamily: AppFonts.OUTFit_DISPLAY,
//                               size: 14,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 4,
//                       ),
//                       MyText(
//                         text: '\$${productPrice}',
//                         weight: FontWeight.w500,
//                         color: KSecondaryColor,
//                         fontFamily: AppFonts.OUTFit_DISPLAY,
//                         size: 24,
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
