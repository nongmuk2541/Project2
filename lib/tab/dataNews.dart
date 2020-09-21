import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// หน้าฟีตข่าว
class DataNews extends StatefulWidget {
  _DataNewsState createState() => _DataNewsState();
}

class _DataNewsState extends State<DataNews> {
  //Field
  //List<FeedNewsModel> feedNewsModel = List();
  //Method

  //@overide
  void initState() {
    super.initState();
    readAllData();
  }

  Future<void> readAllData() async {
    Firestore firestore = Firestore.instance;
    CollectionReference collectionReference = firestore
        .collection('Post'); //สร้าง CollectionReference ที่อ้างอิงถึง...
    await collectionReference.snapshots().listen((response) {
      List<DocumentSnapshot> snapshots = response.documents;
      for (var snapshot in snapshots) {
        print('snapshot = $snapshot');
        //print('Information = ${snapshot.data['detail']}');

        // FeedNewsModel feedNewsModel = FeedNewsModel.fromMap(snapshot.data);
        // setState((){
        //  FeedNewsModel.add(productModel);
        // });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('This.......gfg..f..'),
    );
  }
}

//  @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: ListView.builder(
//             itemCount: feedNewsModel.length,
//             itemBuilder: (BuildContext buildContext, int index) {
//               return Text(feedNewsModel[index].detail);
//             }));
//   }
// }

//////////////////////////////////////////////////////////////

// class DataNews extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
//         height: MediaQuery.of(context).size.height,
//         child: ListView.builder(
//           itemCount: 3,
//           itemBuilder: (context, index) {
//             return Container(
//               height: MediaQuery.of(context).size.width * 0.5,
//               child: Card(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 elevation: 8,
//                 child: Container(
//                   child: Center(),
//                 ),
//               ),
//             );
//           },

//         ),
//       ),
//     );
//   }
// }
