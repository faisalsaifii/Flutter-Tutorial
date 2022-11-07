import 'package:flutter/material.dart';
import 'package:flutter_tutorial/my_class.dart';
import 'package:flutter_tutorial/name_of_class.dart';

void main() => runApp(const MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    ));

// Stateless widget -> State can never change once initialized
// Stateful Widget -> State can change over time

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String myTitle = "My Title";
  int x = 0;
  List<int> nums = [1, 2, 3];
  List l = [
    MyClass(name: "Faisal", age: 20),
    MyClass(name: "Faisal", age: 20),
    MyClass(name: "Faisal", age: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[10],
      appBar: AppBar(
        title: Text(myTitle),
        centerTitle: true,
        backgroundColor: Colors.red[600],
        elevation: 0,
      ),
      // body: Center(

      // Asset Image
      // child: Image(
      //   image: AssetImage('images/1432.jpg'),
      // ),
      // Without using an image widget
      // Same for Image.network
      // child: Image.asset('images/1432.jpg'),
      // Using an Icon
      // BUTTONS
      // child: ElevatedButton(
      //   child: Text("Faisal"),
      //   onPressed: () {},
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: Colors.black,
      //     foregroundColor: Colors.amber,
      //   ),
      // ),
      // Container takes up all available space if no children specified
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: <Widget>[
      //         Icon(
      //           Icons.facebook_sharp,
      //           size: 10.0,
      //           color: Colors.red,
      //         ),
      //         Image(
      //           image: NetworkImage(
      //               'https://4kwallpapers.com/images/walls/thumbs_2t/1432.jpg'),
      //           height: 10,
      //         ),
      //         Container(
      //           child: Container(
      //             color: Colors.white,
      //             child: Padding(
      //               padding: EdgeInsets.symmetric(horizontal: 1, vertical: 9),
      //               child: Text("Hello"),
      //             ),
      //           ),
      //           color: Colors.cyanAccent,
      //           padding: EdgeInsets.all(1),
      //           margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
      //         ),
      //         OutlinedButton(
      //           child: Icon(Icons.facebook),
      //           onPressed: () {},
      //         ),
      //         IconButton(
      //             onPressed: () {
      //               print("Hi!");
      //             },
      //             icon: Icon(Icons.home)),
      //         TextButton(
      //           // No shadow
      //           child: Icon(Icons.facebook),
      //           onPressed: () {},
      //           style: TextButton.styleFrom(
      //             foregroundColor: Colors.blue,
      //             backgroundColor: Colors.pink[100],
      //           ),
      //         ),
      //         Text(
      //           "Body",
      //           style: TextStyle(
      //               fontSize: 10,
      //               fontWeight: FontWeight.bold,
      //               fontFamily: 'BlackCherry'),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      // body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      //   Center(
      //     child: CircleAvatar(
      //       backgroundImage: AssetImage('images/1432.jpg'),
      //       radius: 100,
      //     ),
      //   ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '1',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '2',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             "3",
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '4',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '5',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             "6",
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      //   Divider(
      //     height: 100,
      //     color: Colors.black,
      //   ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '7',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '8',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             "9",
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      //   SizedBox(
      //     height: 100.0,
      //   ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '*',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             '0',
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 1,
      //         child: Container(
      //           color: Colors.amber,
      //           padding: EdgeInsets.all(10),
      //           margin: EdgeInsets.all(10),
      //           child: Text(
      //             "#",
      //             textAlign: TextAlign.center,
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ]),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       alignment: Alignment.center,
      //       child: Text(
      //         '$x',
      //         style: TextStyle(color: Colors.white, fontSize: 40),
      //       ),
      //     ),
      //     ElevatedButton(
      //         onPressed: () {
      //           setState(() {
      //             x += 1;
      //           });
      //         },
      //         child: Icon(
      //           Icons.add,
      //         ))
      //   ],
      // ),

      body: Column(
        // children: nums.map((e) => Text('$e')).toList(),
        // children: l.map((e) => Text('${e.name} - ${e.age}')).toList(),
        children: l
            .map((e) => NameOfClass(
                e: e,
                del: () {
                  setState(() {
                    l.remove(e);
                  });
                }))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: () => {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
