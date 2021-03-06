import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Day1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day1',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WeWidget(),
    );
  }
}

class WeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeWidgetState();
  }
}

class WeWidgetState extends State<WeWidget> {
  final _words = <WordPair>[];
  final _favoriteWord = Set<WordPair>();
  final _textStyle = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('day1'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushToNewPage),
        ],
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2;
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index]);
      },
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final isFavorite = _favoriteWord.contains(wordPair);
    return ListTile(
      title: Text(
        wordPair.asPascalCase,
        style: _textStyle,
      ),
      trailing: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (isFavorite)
            _favoriteWord.remove(wordPair);
          else {
            _favoriteWord.add(wordPair);
          }
        });
      },
    );
  }

  void _pushToNewPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        final tiles = _favoriteWord.map((pair) {
          return ListTile(
            title: Text(
              pair.asPascalCase,
              style: _textStyle,
            ),
          );
        });

        final item =
            ListTile.divideTiles(context: context, tiles: tiles).toList();

        return Scaffold(
          appBar: AppBar(
            title: Text('favorite word'),
          ),
          body: ListView(children: item),
        );
      }),
    );
  }
}
