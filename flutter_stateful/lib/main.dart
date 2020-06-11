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
  var _currencies = ['Shekels', 'Dollars', 'Euro'];
  var _currentItemSelected = 'Shekels';

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
            DropdownButton<String>(

              items: _currencies.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String newValueSelected) {
                _onDropDownItemSelected(newValueSelected);
              },

              value: _currentItemSelected,
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

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}