// // ignore_for_file: depend_on_referenced_packages

// import 'package:flutter/material.dart';
// import 'package:pay/pay.dart';


// class MK extends StatefulWidget {
//   @override
//   _MKState createState() => _MKState();
// }

// class _MKState extends State<MK> {
//   final _paymentItems = [
//     PaymentItem(
//       label: 'Total',
//       amount: '99.99',
//       status: PaymentItemStatus.final_price,
//     )
//   ];
//   void onGooglePayResult(paymentResult) {
//     debugPrint(paymentResult.toString());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'DSC Tutorial',
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Payment Is Processing'),
//               GooglePayButton(
//                 width: 300,
//                 paymentConfigurationAsset: 'gpay.json',
//                 paymentItems: _paymentItems,
//                 //style: GooglePayButtonStyle.black,
//                 type: GooglePayButtonType.pay,
//                 margin: const EdgeInsets.only(top: 15.0),
//                 onPaymentResult: onGooglePayResult,
//                 loadingIndicator: const Center(
//                   child: CircularProgressIndicator(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }