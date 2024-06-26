// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/splash_scareen_controller.dart';

class SplashScareenView extends GetView<SplashScareenController> {
  const SplashScareenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScareenController());
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 100.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/splash_aircharge_iconlogo.svg"),
              SizedBox(
                height: 20.h,
              ),
              TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(seconds: 1),
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: controller.textOpacity.value * value,
                      child: Transform.translate(
                        offset: Offset(
                          0,
                          -50 + (-50 * value),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 0.h),
                          child: Center(
                            child: Image.asset(
                              'assets/images/logo.png',
                              height: 250.h,
                              width: 250.h,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class A {
  edition({required int a}) {
    return a + 1;
  }
}

class Bc implements A {
  @override
  edition({required int a}) {
    return a + 2;
  }
}

class C implements Bc {
  @override
  edition({required int a}) {
    return a + 3;
  }
}
// class TextColorChangeDemo extends StatefulWidget {
//   const TextColorChangeDemo({super.key});

//   @override
//   _TextColorChangeDemoState createState() => _TextColorChangeDemoState();
// }

// class _TextColorChangeDemoState extends State<TextColorChangeDemo>
//     with TickerProviderStateMixin {
//   Color textColor = AppColors.white; // Initial color

//   @override
//   void initState() {
//     super.initState();
//     _startColorAnimation();
//   }

//   @override
//   dispose() {
//     controller!.dispose();
//     super.dispose();
//   }

//   late final AnimationController? controller = AnimationController(
//     duration: const Duration(seconds: 30),
//     vsync: this,
//   )..repeat();

//   void _startColorAnimation() {
//     const duration = Duration(seconds: 5);
//     const updateInterval = Duration(milliseconds: 100);

//     int steps = duration.inMilliseconds ~/ updateInterval.inMilliseconds;
//     int step = 0;

//     Timer.periodic(updateInterval, (timer) {
//       double fraction = step / steps;
//       textColor = Color.lerp(Colors.white, Colors.black, fraction)!;

//       if (step++ >= steps) {
//         timer.cancel();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'assets/images/loading.png',
//               height: 60.h,
//               width: 90.w,
//             ),
//             AnimatedBuilder(
//               animation: controller!,
//               builder: (context, child) {
//                 return Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                         text: 'air',
//                         style: Styles.metaRegular(
//                             color: textColor,
//                             size: 40.sp,
//                             font: FontFamily.meta),
//                       ),
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         text: 'charge',
//                         style: Styles.metaBold(
//                             color: textColor,
//                             size: 40.sp,
//                             font: FontFamily.meta),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
