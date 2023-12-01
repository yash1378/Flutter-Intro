// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyHomePage(),
//   ));
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int myvar = 0;
//   String col = 'blue';
//   String txt = 'black';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: _getColor(),
//       body: Center(
//         child: Text(
//           'You Pressed $myvar times',
//           style: const TextStyle(
//             color: _txtColor(),
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'Pacifico',
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() {
//           myvar++;
//           _changeColor();
//           _changetxtcolor();
//         }),
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }

//   Color _getColor() {
//     switch (col) {
//       case 'blue':
//         return Colors.blue;
//       case 'green':
//         return Colors.green;

//       // Add more cases for other colors as needed
//       default:
//         return Colors.blue;
//     }
//   }

//   Color _txtColor() {
//     switch (txt) {
//       case 'black':
//         return Colors.black;
//       case 'white':
//         return Colors.white;

//       // Add more cases for other colors as needed
//       default:
//         return Colors.black;
//     }
//   }

//   void _changeColor() {
//     // Example: Change color from blue to green and vice versa
//     setState(() {
//       col = (col == 'blue') ? 'green' : 'blue';
//     });
//   }

//   void _changetxtcolor() {
//     // Example: Change color from blue to green and vice versa
//     setState(() {
//       txt = (txt == 'black') ? 'white' : 'black';
//     });
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myvar = 0;
  String col = 'blue';
  String txt = 'black';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _getColor(),
      body: Center(
        child: Text(
          'You Pressed $myvar times',
          style: TextStyle(
            color: _txtColor(),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => setState(() {
      //     myvar++;
      //     _changeColor();
      //     _changeTxtColor(); // Corrected method name
      //   }),
      //   tooltip: 'Increment Counter',
      //   child: const Icon(Icons.add),
      // ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() {
              myvar++;
              _changeColor();
              _changeTxtColor();
            }),
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16), // Add some space between the buttons
          FloatingActionButton(
            onPressed: () => setState(() {
              myvar--;
              _changeColor();
              _changeTxtColor();
            }),
            tooltip: 'Decrement Counter',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }

  Color _getColor() {
    switch (col) {
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;

      // Add more cases for other colors as needed
      default:
        return Colors.blue;
    }
  }

  Color _txtColor() {
    switch (txt) {
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;

      // Add more cases for other colors as needed
      default:
        return Colors.black;
    }
  }

  void _changeColor() {
    // Example: Change color from blue to green and vice versa
    setState(() {
      col = (col == 'blue') ? 'green' : 'blue';
    });
  }

  void _changeTxtColor() {
    // Example: Change color from black to white and vice versa
    setState(() {
      txt = (txt == 'black') ? 'white' : 'black';
    });
  }
}
