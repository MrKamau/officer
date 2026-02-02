// import 'package:flutter/material.dart';
// import 'platform.dart';
// import 'package:officer/theme/colors.dart';

// class AppCards extends StatelessWidget {
//   final Function()? onTap;
//   final Widget? child;
//   final bool bordered;
//   final double borderRadius;
//   final double? width;
//   final double? height;
//   final bool withShadow;
//   @override
//   final Key? key;
//   final Color? color;

//   const AppCards(
//       {this.onTap,
//       this.child,
//       this.key,
//       this.color,
//       this.withShadow = true,
//       this.bordered = false,
//       this.borderRadius = 0,
//       this.height,
//       this.width})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(AppSizes.pageAllPadding),
//       child: InkWell(
//           onTap: onTap,
//           child: SizedBox(
//               height: height,
//               width: width,
//               child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(borderRadius),
//                       border:
//                           bordered ? Border.all(color: Colors.white24) : null,
//                       boxShadow: withShadow
//                           ? [
//                               const BoxShadow(
//                                 color: Colors.black26,
//                                 offset: Offset(0.0, 4.0),
//                                 blurRadius: 12.0,
//                               ),
//                             ]
//                           : null,
//                       color: color ?? appCardBright),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: child,
//                   )))),
//     );
//   }
// }
