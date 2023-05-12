import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class CustomShapeClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:hidoc/view/HomeScreen/widgets.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         body: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Container(
//                       width: double.infinity,
//                       height: size.height * 0.20,
//                       child: Column(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.blue[400],
//                                 borderRadius: const BorderRadius.only(
//                                     bottomLeft: Radius.circular(25),
//                                     bottomRight: Radius.circular(10))),
//                             height: size.height * 0.035,
//                             width: size.width * 0.3,
//                             child: const Center(
//                               child: Text(
//                                 "hidoc",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 18),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 height: size.height * 0.08,
//                                 width: size.width * 0.15,
//                                 child: Icon(
//                                   Icons.house,
//                                   size: size.height * 0.05,
//                                 ),
//                               ),
//                               const Padding(
//                                 padding: EdgeInsets.only(left: 95),
//                                 child: Text(
//                                   "ARTICLES",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20),
//                                 ),
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 12),
//                             child: Container(
//                               height: size.height * 0.075,
//                               decoration: BoxDecoration(
//                                   boxShadow: const [BoxShadow(blurRadius: 2)],
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: size.width * 0.80,
//                                     child: const Center(
//                                       child: Text(
//                                         "Critical Care",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15),
//                                       ),
//                                     ),
//                                   ),
//                                   const Icon(Icons.arrow_drop_down)
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 10,
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         boxShadow: const [BoxShadow(blurRadius: 2)],
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                       ),
//                       height: size.height * 0.46,
//                       width: size.width * double.infinity,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Container(
//                             decoration: const BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(10),
//                                   topRight: Radius.circular(10)),
//                               color: Colors.grey,
//                             ),
//                             height: size.height * 0.25,
//                             width: size.width * double.infinity,
//                             child: Icon(
//                               Icons.my_library_books_outlined,
//                               size: size.height * 0.20,
//                             ),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(left: 10),
//                             child: Text(
//                               "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(left: 10, top: 5),
//                             child: Text(
//                               "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 decoration: const BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(10)),
//                                 ),
//                                 height: size.height * 0.1,
//                                 width: size.width * 0.73,
//                                 child: const Center(
//                                   child: Text(
//                                     'Read full articles to earn points',
//                                     style: TextStyle(
//                                         decoration: TextDecoration.underline,
//                                         color: Colors.blue),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: const BorderRadius.only(
//                                         bottomRight: Radius.circular(10)),
//                                     color: Colors.blue[400],
//                                   ),
//                                   height: size.height * 0.1,
//                                   width: size.width * 0.2,
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: const [
//                                       Text("points",
//                                           style: TextStyle(
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.w400)),
//                                       Text("2",
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.bold))
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   BulletMainHead(Bullet: "Hidoc Bulletin"),
//                   BulletinTextContainer(
//                     size: size,
//                     Head: "Vaccin Histency:where are we and where are we Going",
//                     Subtitle:
//                         "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                   ),
//                   BulletinTextContainer(
//                     size: size,
//                     Head: "Vaccin Histency:where are we and where are we Going",
//                     Subtitle:
//                         "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                   ),
//                   BulletinTextContainer(
//                     size: size,
//                     Head: "Vaccin Histency:where are we and where are we Going",
//                     Subtitle:
//                         "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                   ),
//                   BulletinTextContainer(
//                     size: size,
//                     Head: "Vaccin Histency:where are we and where are we Going",
//                     Subtitle:
//                         "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                   ),
//                   Container(
//                     height: size.height * 0.9,
//                     decoration: BoxDecoration(
//                         color: Colors.blue[100],
//                         borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     width: size.width * double.infinity,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           BulletMainHead(Bullet: "Trending Hidoc Bulletin"),
//                           BulletinTextContainer(
//                             size: size,
//                             Head:
//                                 "Vaccin Histency:where are we and where are we Going",
//                             Subtitle:
//                                 "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                           ),
//                           BulletinTextContainer(
//                             size: size,
//                             Head:
//                                 "Vaccin Histency:where are we and where are we Going",
//                             Subtitle:
//                                 "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                           ),
//                           BulletinTextContainer(
//                             size: size,
//                             Head:
//                                 "Vaccin Histency:where are we and where are we Going",
//                             Subtitle:
//                                 "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                           ),
//                           BulletinTextContainer(
//                             size: size,
//                             Head:
//                                 "Vaccin Histency:where are we and where are we Going",
//                             Subtitle:
//                                 "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Center(
//                       child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Container(
//                       color: Colors.orange,
//                       height: size.height * 0.05,
//                       width: size.width * 0.6,
//                       child: const Center(
//                         child: Text(
//                           "Read More Bulletins",
//                           style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: Colors.white,
//                               fontSize: 17),
//                         ),
//                       ),
//                     ),
//                   )),
//                   Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     height: size.height * 0.4,
//                     width: size.width * double.infinity,
//                     child: Column(
//                       children: [
//                         BulletMainHead(Bullet: "Latest Articls"),
//                         TrendingArticlesDividerContainer(),
//                         TrendingArticlesDividerContainer(),
//                         TrendingArticlesDividerContainer(),
//                         TrendingArticlesDividerContainer(),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(border: Border.all()),
//                     height: size.height * 0.47,
//                     width: size.width * double.infinity,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 25),
//                       child: Column(
//                         children: [
//                           BulletMainHead(Bullet: "Trending Articls"),
//                           Container(
//                             color: Colors.grey[400],
//                             height: size.height * 0.2,
//                             width: size.width * double.infinity,
//                             child: Icon(Icons.my_library_books_outlined,
//                                 size: size.height * 0.2, color: Colors.black45),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.symmetric(vertical: 10),
//                             child: Text(
//                               "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for ",
//                               style: TextStyle(fontSize: 15),
//                               maxLines: 2,
//                             ),
//                           ),
//                           Container(
//                             height: size.height * 0.1,
//                             width: size.width * double.infinity,
//                             child: Row(
//                               children: [
//                                 Container(
//                                   color: Colors.grey[400],
//                                   height: size.height * 0.1,
//                                   width: size.width * 0.2,
//                                   child: Icon(
//                                     Icons.library_books_outlined,
//                                     color: Colors.black45,
//                                     size: 40,
//                                   ),
//                                 ),
//                                 Container(
//                                   color: Colors.white,
//                                   height: size.height * 0.1,
//                                   width: size.width * 0.60,
//                                   child: Center(
//                                     child: Text(
//                                       " for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//                                       maxLines: 3,
//                                       style: TextStyle(fontSize: 15),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(border: Border.all()),
//                       height: size.height * 0.25,
//                       width: size.width * double.infinity,
//                       child: Column(
//                         children: [
//                           BulletMainHead(Bullet: "Explore more in ArticlesS"),
//                           TrendingArticlesDividerContainer(),
//                           TrendingArticlesDividerContainer(),
//                         ],
//                       ),
//                     ),
//                   ),
//                   moreButtons(
//                       size: size,
//                       width: size.width * double.infinity,
//                       texts: "Exoplore Hidoc Dr"),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       BulletMainHead(Bullet: "What's more on Hidoc Dr."),
//                     ],
//                   ),
//                   Container(
//                     color: Colors.blue[50],
//                     height: size.height * 0.56,
//                     width: size.width * double.infinity,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         BulletMainHead(Bullet: "News"),
//                         Text(
//                           "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for ",
//                         ),
//                         SizedBox(
//                           height: size.height * 0.16,
//                         ),
//                         Container(
//                           color: Color.fromARGB(255, 186, 178, 157),
//                           height: size.height * 0.27,
//                           width: size.width * double.infinity,
//                           child: Image.asset(
//                             "asset/eye.jpg",
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     decoration:
//                         BoxDecoration(border: Border.all(color: Colors.grey)),
//                     height: size.height * 0.2,
//                     width: size.width * double.infinity,
//                     child: Column(
//                       children: [
//                         lastIconContainer(
//                             Head: "Quizzes:",
//                             Subtitle: "Participate & win price",
//                             size: size),
//                         lastIconContainer(
//                             Head: "Medical Calculetors:",
//                             Subtitle: "Participate & win price",
//                             size: size),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height * 0.1,
//                   ),
//                   Container(
//                     color: Colors.orange[100],
//                     height: size.height * 0.1,
//                     width: size.width * double.infinity,
//                     child: Row(
//                       children: [
//                         Container(
//                           height: size.height * 0.1,
//                           width: size.width * 0.7,
//                           child: Center(
//                             child: Text(
//                               "Comprensive gaid Decoding the Nexus Critieria for ",
//                               style: TextStyle(fontWeight: FontWeight.w800),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               color: Colors.amber,
//                               borderRadius: BorderRadius.circular(25)),
//                           height: size.height * 0.04,
//                           width: size.width * 0.15,
//                           child: Center(
//                               child: Text(
//                             "Visit",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           )),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Container lastIconContainer(
//       {required Size size, required String Head, required String Subtitle}) {
//     return Container(
//       height: size.height * 0.09,
//       width: size.width * double.infinity,
//       child: Row(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.blue[50],
//                 borderRadius: BorderRadius.circular(30)),
//             height: size.height * 0.08,
//             width: size.width * 0.16,
//             child: Icon(
//               Icons.military_tech_outlined,
//               size: 35,
//               color: Colors.blue,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 10),
//             child: Container(
//               height: size.height * 0.3,
//               width: size.width * 0.3,
//               child: Text(
//                 Head,
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               height: size.height * 0.3,
//               child: Center(
//                 child: Text(
//                   Subtitle,
//                   style: TextStyle(fontSize: 15),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Container moreButtons(
//       {required Size size, required double width, required String texts}) {
//     return Container(
//       color: Colors.orange,
//       height: size.height * 0.05,
//       child: Center(
//         child: Text(
//           texts,
//           style: TextStyle(
//               fontWeight: FontWeight.w400, color: Colors.white, fontSize: 17),
//         ),
//       ),
//     );
//   }

//   TrendingArticlesDividerContainer() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
//       child: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(bottom: 10),
//             child: Divider(
//               height: 3,
//               thickness: 1,
//               color: Colors.grey,
//             ),
//           ),
//           const Text(
//             "Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid Decoding the Nexus Critieria for Critiacal Care: A Comprensive gaid",
//             style: TextStyle(fontSize: 15),
//             maxLines: 2,
//           )
//         ],
//       ),
//     );
//   }

//   BulletMainHead({required String Bullet}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Text(
//         Bullet,
//         style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//       ),
//     );
//   }

//   Container BulletinTextContainer(
//       {required Size size, required String Head, required String Subtitle}) {
//     return Container(
//       height: size.height * 0.2,
//       width: size.width * double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             color: Colors.blue[400],
//             height: size.height * 0.012,
//             width: size.width * 0.3,
//           ),
//           Text(
//             Head,
//             maxLines: 2,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//           Text(
//             Subtitle,
//             maxLines: 3,
//             style: const TextStyle(fontSize: 16),
//           ),
//           const Text(
//             "Read More",
//             style: TextStyle(
//                 decoration: TextDecoration.underline, color: Colors.blue),
//           )
//         ],
//       ),
//     );
//   }
// }
