// import 'package:aircharge/app/core/theme/buttons.dart';
// import 'package:aircharge/app/core/theme/colors.dart';
// import 'package:aircharge/app/core/theme/styles.dart';
// import 'package:aircharge/app/modules/home/controllers/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// class MsOfferDetails extends GetView<HomeController> {
//   const MsOfferDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.sp),
//       ),
//       borderOnForeground: false,
//       color: AppColors.white,
//       margin: EdgeInsets.only(
//         bottom: Get.height * 0.126.h,
//         left: 12.w,
//         right: 12.w,
//         top: 1.h,
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: AppColors.grey.withOpacity(0.1),
//               spreadRadius: -2.26,
//               blurRadius: 1.0,
//               offset: const Offset(-4.0, -2.0),
//             ),
//             BoxShadow(
//               color: AppColors.grey.withOpacity(0.1),
//               blurRadius: 1.0,
//               spreadRadius: -2.26,
//               offset: const Offset(5.0, 1.0),
//             ),
//           ],
//           color: AppColors.white,
//           borderRadius: BorderRadius.circular(10.sp),
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 4.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 10.w,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: GestureDetector(
//                         onTap: () {
//                           // controller.isVisibleMSOfferScreen = true;
//                           // controller.isOpenedMSOfferScreen.value = false;
//                           // controller.animationControllerMSOfferScreen.reverse();
//                           // controller.update(
//                           //   [" MultipleOfeervisiblePage, "],
//                           // );
//                           controller.isVisibleMSOfferScreen = true;
//                           controller.isOpenedMSOfferScreen.value = false;
//                           controller.animationControllerMSOfferScreen.reverse();
//                           controller.update(
//                             ['MSvisiblePage'],
//                           );
//                         },
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 50.h,
//                             width: 50.w,
//                             color: Colors.transparent,
//                             child: Icon(
//                               Icons.arrow_back_ios_new,
//                               size: 18.sp,
//                               color: AppColors.iconGreyColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 4.h),
//                         child: CircleAvatar(
//                           backgroundColor: Colors.transparent,
//                           radius: 20.sp,
//                           child: SvgPicture.asset(
//                             'assets/images/od_logo_costa.svg',
//                             fit: BoxFit.contain,
//                           ),

//                           // child: Image.asset(
//                           //   "assets/images/starbuckslogo.png",
//                           //   width: 40.w,
//                           //   height: 40.h,
//                           //   fit: BoxFit.fill,
//                           // ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 15,
//                       child: Center(
//                         child: Text(
//                           "Costa Coffee",
//                           style: Styles.interBold(
//                             color: AppColors.blackGrey,
//                             size: 16.sp,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: SizedBox(
//                         width: 6.w,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 4.h,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 10.w,
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.sp),
//                     image: const DecorationImage(
//                         image:
//                             AssetImage("assets/images/offer_costa_promo.png"),
//                         fit: BoxFit.fill),
//                   ),
//                   height: Get.height / 4.2.h,
//                   width: Get.width,
//                 ),
//               ),
//               SizedBox(
//                 height: 8.h,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 10.w,
//                 ),
//                 child: Text(
//                   "Earn rewards in the starbucks loyalty app",
//                   style: Styles.interBold(
//                     color: AppColors.blackText,
//                     size: 14.sp,
//                   ),
//                   maxLines: 2,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 10.w,
//                 ),
//                 child: Text(
//                   "Expanded offer information",
//                   style: Styles.interRegular(
//                     color: AppColors.black,
//                     size: 12.sp,
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 10.w,
//                 ),
//                 child: Text(
//                   "Offer ends: dd/mm/yyyy",
//                   style: Styles.interRegular(
//                     color: AppColors.black,
//                     size: 12.sp,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 8.h,
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 6.w,
//                 ),
//                 child: PrimaryButton(
//                   onPressed: () {},
//                   height: 62.h,
//                   width: Get.width,
//                   color: AppColors.brown,
//                   child: Text(
//                     "Redeem",
//                     style: Styles.interRegular(
//                       color: AppColors.white,
//                       size: 20.sp,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 4.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
