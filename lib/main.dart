// import 'package:flutter/material.dart';
// import 'dart:math';
//
// // function ka laga kiciyo appks
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "yahye demo",
//
//       theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.orange)),
//       home: MyHomePage(title: "hello flutter"),
//     );
//   }
// }
//
// // named paramter  : it's also this one means that whenwe have named parameter and we can be place the value as we like '
// // postional parameter : it's  like the sequence of the the constructor we must follow like that
//
// class MyHomePage extends StatefulWidget {
//   final String? title;
//
//   const MyHomePage({this.title, super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   String _curentFrotune = "";
//
//   //
//   // void myListTesting(){
//   //  String  _accessing_rondom_value = "" ;
//   //   List names = ['d' ,  'd', 'x' ,  'y' ,  'm' ,  'p' ];
//   //   var Rondom = Random().nextInt(names.length);
//   //  _accessing_rondom_value = names[Rondom];
//   //   print('this is the rondom number ${Rondom} and also the actual value ${_accessing_rondom_value}');
//   //
//   //
//   // }
//
//
//   final List _FrotuneList = [
//     "yahye",
//     "farah",
//     'jeer', // plain  index
//     "mohamed",
//     "anas",
//     'maaido',
//     "yaska",
//     'sacdio',
//   ];
//
//   void RandomFortune() {
//     var Rondom = Random();
//
//     int fortune = Rondom.nextInt(_FrotuneList.length);
//
//     print(fortune);
//     setState(() {
//       _curentFrotune = _FrotuneList[fortune];
//
//     });
//
//
//   }
//
//
//   // int current_index = 0 ;
//
//   // void IncrementCount() {
//   //   setState(() {
//   //     // current_index++;
//   //     current_index  = current_index + 1;
//   //     print(current_index);
//   //
//   //   });
//   // }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // myListTesting();
//     // RandomFortune();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title ?? " "),
//         centerTitle: true,
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Text('${Rondom_Access[current_index % Rondom_Access.length]}',
//             //     style: Theme
//             //     .of(context)
//             // .textTheme
//             // .bodyLarge,),
//             Text('$_curentFrotune',
//               style: Theme
//                   .of(context)
//                   .textTheme
//                   .headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: RandomFortune,
//         tooltip: "Increment",
//         child: Icon(Icons.local_fire_department),
//       ),
//     );
//   }
// }
//
// //
// // class maryan extends StatefulWidget {
// //   const maryan({super.key});
// //
// //   @override
// //   State<maryan> createState() => _maryanState();
// // }
// //
// // class _maryanState extends State<maryan> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }
//
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({this.title, super.key});
// //
// //   final String? title;
// //
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;
// //
// //   // List My_list = [
// //   //   'yahye farah',
// //   //   'canuuni farah',
// //   //   'yaska farah',
// //   //   'maxamed farah',
// //   // ];
// //
// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         title: Text(widget.title ?? ""),
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: .center,
// //           children: [
// //             const Text('You have pushed the button this many times:'),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ),
// //     );
// //   }
// // }

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const my_App());
}

class my_App extends StatelessWidget {
  const my_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter learning",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blueGrey)),
      home: MyFullApp(),
    );
  }
}

class MyFullApp extends StatefulWidget {
  const MyFullApp({super.key});

  @override
  State<MyFullApp> createState() => _MyFullAppState();
}

class _MyFullAppState extends State<MyFullApp> {
  int _count = 0;

  String Curent_Fortune = "";

  final _fortuneList = [
    "Akoon soo samayso ",
    'kale oo ii soo dir user-kiisa',
    "password-kiisa. Kan wuu diidey",
    'Curent_Fortune',
    " backgroundColorr,",
  ];

  void IncremnetCount() {
    var Rondom = Random().nextInt(_fortuneList.length);
    setState(() {
      Curent_Fortune = _fortuneList[Rondom];
    });

    print("curent number ${Curent_Fortune}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("flutter learning"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: 20),
                    Positioned(
                      top: 20,
                      left: 20,

                      child: Image.asset(
                        "assets/images/provider.png",
                        width: 100,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      "assets/images/provider.png",
                      width: 100,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      "assets/images/provider.png",
                      width: 100,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),

            Text(
              "your fortune  is ",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),

              // Theme.of(context).textTheme.headlineLarge,
            ),
            Card(
              child: Text(
                '${Curent_Fortune}',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            ElevatedButton(
              onPressed: IncremnetCount,
              child: Text("Get Fortune", selectionColor: Colors.yellowAccent),
            ),
          ],
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.red,
        shadowColor: Colors.white,
        child: Center(
          child: Image.asset(
            "assets/images/provider.png",
            width: 100,
            height: 140,
            fit: BoxFit.cover,
          ),
        ),
      ),
      // endDrawer: End,
      floatingActionButton: FloatingActionButton(
        onPressed: IncremnetCount,
        tooltip: "increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
