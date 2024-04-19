// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:pinput/pinput.dart';
//
// class PinPut extends StatefulWidget {
//   const PinPut({super.key});
//
//   @override
//   State<PinPut> createState() => _PinPutState();
// }
//
// class _PinPutState extends State<PinPut> {
//       final defaultPinTheme = PinTheme(
//       width: 74,
//       height: 63,
//       textStyle: const TextStyle(
//         fontSize: 22,
//         color: Colors.black,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Colors.transparent),
//       ),
//     );
//     final focusedPinTheme = PinTheme(
//       width: 74,
//       height: 63,
//       textStyle: const TextStyle(
//         fontSize: 22,
//         color: Colors.black,
//       ),
//       decoration: BoxDecoration(
//         color: Color(0xffE4CFE8),
//         borderRadius: BorderRadius.circular(10),
//         border: Border.all(color: Color(0xffA54BFF)),
//       ),
//     );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffA54BFF),
//       appBar: AppBar(
//        leading: const SizedBox(),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           color: Color(0xffFFFFFF),
//           borderRadius: BorderRadius.vertical(top: Radius.circular(50))
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               margin: const EdgeInsets.only(bottom: 40),
//               child: Text(
//                   "+ 998 97 *** ** 07",
//                   style: GoogleFonts.montserrat(textStyle: TextStyle(
//                       color: Colors.deepOrange,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold))
//               ),
//             ),
//             Pinput(
//                   length: 4,
//                   defaultPinTheme: defaultPinTheme,
//                   focusedPinTheme: defaultPinTheme.copyWith(
//                     decoration: defaultPinTheme.decoration!.copyWith(
//                       border: Border.all(color: Colors.grey),
//                     ),
//                   ),
//                   onCompleted: (pin) => debugPrint(pin),
//                 ),
//           ],
//         ),
//       ),
//     );
//   }
// }