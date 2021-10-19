// import 'package:flutter/material.dart';
// import 'package:genshin_impact_album_info/detailAlbum.dart';
// import 'package:genshin_impact_album_info/genshinAlbumList.dart';

// class Home extends StatelessWidget {
//   @override

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.only(top: 16.0, left: 14.0),
//                 child: Text(
//                   'Welcome Back',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontFamily: 'GI',
//                     color: Color(0xFF505050)
//                   ),  
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 5.0,left: 14.0),
//                 child: Text(
//                   'Traveller',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Color(0xFFCC9B3C),
//                     fontFamily: 'GI'
//                   ),  
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 8.0,left: 14.0),
//                 child: Text(
//                   'Explore The Relaxing Music of Entire Teyvat!',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xFF6A6A6A),
//                     fontFamily: 'Poppins-Light'
//                   ),  
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 28.0,left: 14.0),
//                 child: Text(
//                   'Hits Album',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Color(0xFF333333),
//                     fontWeight: FontWeight.w700,
//                     fontFamily: 'Poppins-SemiBold'
//                   ),    
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 14.0),
//                 child:
//                   ClipRRect(
//                     child: 
//                       Image.asset('images/newest_album.jpg'),
//                       borderRadius: BorderRadius.circular(10),
//                   ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10.0),
//                 child: Center(
//                   child: RaisedButton(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
//                     onPressed: () {},
//                     child: Text(
//                       'More Info',
//                       style: TextStyle(
//                         fontFamily: 'Poppins-Medium',
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500
//                       ),
//                     ),
//                     color: Color(0xFF5089C6),
//                     textColor: Colors.white,
//                     padding: EdgeInsets.symmetric(horizontal: 145.0, vertical: 15.0),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 28.0,left: 15.0),
//                 child: Text(
//                   'Newcomer!',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Color(0xFF333333),
//                     fontWeight: FontWeight.w700,
//                     fontFamily: 'Poppins-SemiBold'
//                   ),    
//                 ),
//               ),
//               Container(
//                 child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return DetailAlbum();
//                   }));
//                 },
//                 child: Container(
//                   margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 14.0),
//                   height: 240,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                       children: <Widget>[
//                           Container(
//                             width: 160,
//                             child: Card(
//                               child: Wrap(
//                                   children: <Widget>[
//                                     ClipRRect(
//                                       child: 
//                                         Image.asset('images/vortex_legends.jpg'),
//                                         borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     ListTile(
//                                       title: Text(
//                                         "Vortex Legends",
//                                         style: TextStyle(
//                                           fontFamily: 'Poppins-Medium',
//                                           fontSize: 14,
//                                         ),
//                                         ),
//                                       subtitle: Text("HoYo-Mix"),
//                                     ),
//                                   ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 160,
//                             child: Card(
//                               child: Wrap(
//                                   children: <Widget>[
//                                     ClipRRect(
//                                       child: 
//                                         Image.asset('images/the_stellar_moments.jpg'),
//                                         borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     ListTile(
//                                       title: Text(
//                                         "The Stellar Moments",
//                                         style: TextStyle(
//                                           fontFamily: 'Poppins-Medium',
//                                           fontSize: 14,
//                                         ),
//                                         ),
//                                       subtitle: Text("HoYo-Mix"),
//                                     ),
//                                   ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 160,
//                             child: Card(
//                               child: Wrap(
//                                   children: <Widget>[
//                                     ClipRRect(
//                                       child: 
//                                         Image.asset('images/jade_moon_upon_a_sea_of_cloud.jpg'),
//                                         borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     ListTile(
//                                       title: Text(
//                                         "Jade Moon Upon a Sea",
//                                         style: TextStyle(
//                                           fontFamily: 'Poppins-Medium',
//                                           fontSize: 14,
//                                         ),
//                                         ),
//                                       subtitle: Text("HoYo-Mix"),
//                                     ),
//                                   ],
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 160,
//                             child: Card(
//                               child: Wrap(
//                                   children: <Widget>[
//                                     ClipRRect(
//                                       child: 
//                                         Image.asset('images/city_of_winds_and_idylls.jpg'),
//                                         borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                     ListTile(
//                                       title: Text(
//                                         "City of Winds and Idylls",
//                                         style: TextStyle(
//                                           fontFamily: 'Poppins-Medium',
//                                           fontSize: 14,
//                                         ),
//                                         ),
//                                       subtitle: Text("HoYo-Mix"),
//                                     ),
//                                   ],
//                               ),
//                             ),
//                           ),
//                       ],
//                   ),
//                 ),
//               ),
//              ),
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }



// // InkWell(
// //                 onTap: () {
// //                   Navigator.push(context, MaterialPageRoute(builder: (context) {
// //                     return DetailAlbum();
// //                   }));
// //                 },
// //                 child: Container(
// //                   margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 14.0),
// //                   height: 240,
// //                   child: ListView(
// //                     scrollDirection: Axis.horizontal,
// //                       children: <Widget>[
// //                           Container(
// //                             width: 160,
// //                             child: Card(
// //                               child: Wrap(
// //                                   children: <Widget>[
// //                                     ClipRRect(
// //                                       child: 
// //                                         Image.asset('images/vortex_legends.jpg'),
// //                                         borderRadius: BorderRadius.circular(8.0),
// //                                     ),
// //                                     ListTile(
// //                                       title: Text(
// //                                         "Vortex Legends",
// //                                         style: TextStyle(
// //                                           fontFamily: 'Poppins-Medium',
// //                                           fontSize: 14,
// //                                         ),
// //                                         ),
// //                                       subtitle: Text("HoYo-Mix"),
// //                                     ),
// //                                   ],
// //                               ),
// //                             ),
// //                           ),
// //                           Container(
// //                             width: 160,
// //                             child: Card(
// //                               child: Wrap(
// //                                   children: <Widget>[
// //                                     ClipRRect(
// //                                       child: 
// //                                         Image.asset('images/the_stellar_moments.jpg'),
// //                                         borderRadius: BorderRadius.circular(8.0),
// //                                     ),
// //                                     ListTile(
// //                                       title: Text(
// //                                         "The Stellar Moments",
// //                                         style: TextStyle(
// //                                           fontFamily: 'Poppins-Medium',
// //                                           fontSize: 14,
// //                                         ),
// //                                         ),
// //                                       subtitle: Text("HoYo-Mix"),
// //                                     ),
// //                                   ],
// //                               ),
// //                             ),
// //                           ),
// //                           Container(
// //                             width: 160,
// //                             child: Card(
// //                               child: Wrap(
// //                                   children: <Widget>[
// //                                     ClipRRect(
// //                                       child: 
// //                                         Image.asset('images/jade_moon_upon_a_sea_of_cloud.jpg'),
// //                                         borderRadius: BorderRadius.circular(8.0),
// //                                     ),
// //                                     ListTile(
// //                                       title: Text(
// //                                         "Jade Moon Upon a Sea",
// //                                         style: TextStyle(
// //                                           fontFamily: 'Poppins-Medium',
// //                                           fontSize: 14,
// //                                         ),
// //                                         ),
// //                                       subtitle: Text("HoYo-Mix"),
// //                                     ),
// //                                   ],
// //                               ),
// //                             ),
// //                           ),
// //                           Container(
// //                             width: 160,
// //                             child: Card(
// //                               child: Wrap(
// //                                   children: <Widget>[
// //                                     ClipRRect(
// //                                       child: 
// //                                         Image.asset('images/city_of_winds_and_idylls.jpg'),
// //                                         borderRadius: BorderRadius.circular(8.0),
// //                                     ),
// //                                     ListTile(
// //                                       title: Text(
// //                                         "City of Winds and Idylls",
// //                                         style: TextStyle(
// //                                           fontFamily: 'Poppins-Medium',
// //                                           fontSize: 14,
// //                                         ),
// //                                         ),
// //                                       subtitle: Text("HoYo-Mix"),
// //                                     ),
// //                                   ],
// //                               ),
// //                             ),
// //                           ),
// //                       ],
// //                   ),
// //                 ),
// //               ),