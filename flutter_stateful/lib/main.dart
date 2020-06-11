import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Stateful App Example',
      home: FavoriteCity(),
    )
  );
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {

  String nameCity = '';

  @override
  Widget build(BuildContext context) {
    debugPrint('Favorite City widget is created');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example')
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String value) {
                setState(() {
                  debugPrint('setState is called, widget re render');
                  nameCity = value;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: (
                Text(
                  'Your favorite city is $nameCity',
                  style: TextStyle(fontSize: 20.0),
                ))
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
  
}