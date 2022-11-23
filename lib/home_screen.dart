import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // main axis alignment : start
    // cross axis alignment : center

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: onNotification,
          ),
          IconButton(
            icon: Text(
              'hello',
            ),
            onPressed: () {
              print('hello');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(
                    20.0,
                  ),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                    ),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.black.withOpacity(.7),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  // when notification icon button clicked
  void onNotification() {
    print('notification clicked');
  }
}








//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red ,
//         leading: Icon(
//           Icons.menu,
//         ),
//       title: Text(
//           'My First App 💚️'),
//       actions: [
//         IconButton(onPressed: (){
//           print('The Notification Icon is pressed ');
//         }, icon:   Icon(
//           Icons.notification_important,
//         ),),
//       IconButton(onPressed: (){
//         print('Search Icon is pressed ');
//       }, icon: Icon(
//         Icons.search,
//       ))
//
//       ],
//       ),
// body: Container(
//   color: Colors.cyanAccent,
//   width: double.infinity,
//   child:   Column(
//     // mainAxisAlignment: MainAxisAlignment.start,
//     // crossAxisAlignment: CrossAxisAlignment.end,
//     children: [
//       Container(
//         color: Colors.red,
//         child: Text(
//           'First Text',
//           style: TextStyle(
//             fontSize: 30,
//           ),
//
//         ),
//       ),
//       Container(
//         color:Colors.green,
//         child: Text(
//           'Second Text'
//         ),
//       ),
//       Container (
//         color:Colors.blue,
//         child: Text(
//           'Third Text'
//         ),
//       ),
//       Container (
//         color: Colors.amber,
//         child: Text(
//           'Fourth Text'
//
//         ),
//       ),
//     ],
//   ),
// ),
//     );
//   }
// }