import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Day1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'day1',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget{
    @override
    State<StatefulWidget> createState() {
      return new RandomWordState();
    }
}

class RandomWordState extends State<RandomWords>{

    final _words = <WordPair>[]; 
    final _favoriteWord = Set<WordPair>();
    final _textStyle = const TextStyle(fontSize: 18.0);

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('day1'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list),onPressed: _pushToNewPage),
          ],
        ),
        body: _buildListView(),
      );
    }

    Widget _buildListView(){
      return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context,i){
          if(i.isOdd) return new Divider();
          final index = i ~/ 2;
          if(index >= _words.length){
            _words.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_words[index]);
        },
      );
    }

    Widget _buildRow(WordPair wordPair){
      final isFavorite = _favoriteWord.contains(wordPair);
      return new ListTile(
        title: new Text(
          wordPair.asPascalCase,
          style: _textStyle,
        ),
        trailing: new Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : null,
        ),
        onTap: (){
          setState(() {
            if(isFavorite)_favoriteWord.remove(wordPair);else{_favoriteWord.add(wordPair);}
          });
        },
      );
    }

    void _pushToNewPage(){
      Navigator.of(context).push(
        new MaterialPageRoute(
            builder:(context){
              final tiles = _favoriteWord.map(
                (pair){
                  return new ListTile(
                    title: new Text(
                      pair.asPascalCase,
                      style: _textStyle,
                    ),
                  );
                }
              );

              final item = ListTile.divideTiles(
                context: context,
                tiles: tiles
              ).toList();

              return new Scaffold(
                appBar: new AppBar(
                  title: new Text('favorite word'),
                ),
                body: new ListView(children: item),
              );
            } 
        ),
      );
    }
}