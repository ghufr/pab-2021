// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// // void main() {
// //   runApp(const HalamanTiga());
// // }

// // class HalamanTiga extends StatelessWidget {
// //   const HalamanTiga({Key? key}) : super(key: key);

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text("Halaman Satu")),
// //       body: MyHomePage(),
// //     );
// //   }
// // }

// class HalamanTiga extends StatefulWidget {
//   const HalamanTiga({Key? key}) : super(key: key);

//   @override
//   State<HalamanTiga> createState() => _HalamanTigaState();
// }

// class _HalamanTigaState extends State<HalamanTiga> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: /*1*/ (context, i) {
//           if (i.isOdd) return const Divider(); /*2*/

//           final index = i ~/ 2; /*3*/
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Welcome to Flutter'),
//         ),
//         body: _buildSuggestions());
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
