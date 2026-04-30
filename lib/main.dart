import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "yahye demo",

      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.orange)),
      home: MyHomePage(title: "hello flutter"),
    );
  }
}

// named paramter  : it's also this one means that whenwe have named parameter and we can be place the value as we like '
// postional parameter : it's  like the sequence of the the constructor we must follow like that

class MyHomePage extends StatefulWidget {
  final String? title;

  const MyHomePage({this.title, super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  List Rondom_Access = [
    "yahye" ,
    "farah",
    'jeer',
  ];
  void printng(){
    Rondom_Access[1];
  }

  int current_index =0 ;

  void IncrementCount() {
    setState(() {
      current_index++;

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    printng();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? " "),
        centerTitle: true,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Rondom_Access[current_index % Rondom_Access.length]}',
                style: Theme
                .of(context)
                .textTheme
                .bodyLarge,),
            Text('$current_index',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,),
          ]



          ,
        ),
      ),
      floatingActionButton: FloatingActionButton(


          onPressed: IncrementCount,
          tooltip: "Increment",
          child: Icon(Icons.add)

      ),

    );
  }
}

//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({this.title, super.key});
//
//   final String? title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   // List My_list = [
//   //   'yahye farah',
//   //   'canuuni farah',
//   //   'yaska farah',
//   //   'maxamed farah',
//   // ];
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title ?? ""),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: .center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
