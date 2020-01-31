import 'package:flutter/material.dart';

class AnalisisPage extends StatefulWidget {
  @override
  _AnalisisPageState createState() => _AnalisisPageState();
}

class _AnalisisPageState extends State<AnalisisPage> {
  bool monVal = false;
  bool tuVal = false;
  bool _radioValue1=true;

  List _cities = [
    "Lima",
    "Ica",
    "Cuzco",
    "Puno",
    "Huancavelica"
  ];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(value: city, child: new Text(city)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
      children: <Widget>[
        Form(
            child: Column(
          children: <Widget>[
            Text("Ingreso de Datos", style: TextStyle(fontSize: 20.0)),
            Divider(),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Ingresar Nombres",
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioValue1,
                ),
                Text(
                  'Hombre',
                  style: new TextStyle(fontSize: 16.0),
                ),
                Radio(
                  value: 1,
                  groupValue: _radioValue1,
                ),
                Text(
                  'Mujer',
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Ingresar Edad",
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Ingresar Peso",
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Ingrese su peso';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Seleccione su ciudad: "),
                Container(
                  padding: new EdgeInsets.all(16.0),
                ),
                DropdownButton(
                  value: _currentCity,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
                )
              ],
            ),
            SizedBox(height: 200.0,),
            RaisedButton(
              onPressed: (){

              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Analizar Datos",
              ),
            ),

          ],
        ))
      ],
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }
}
