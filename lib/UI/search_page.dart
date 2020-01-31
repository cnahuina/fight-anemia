import 'recomendaciones_page.dart';
import 'resultados_page.dart';
import 'analisis_page.dart';
import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30,color: Colors.red, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    AnalisisPage(),
    ResultadosPage(),
    RecomendacionesPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fight Anemia"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            title: Text('Analisis'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Resultados'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_check),
            title: Text('Recomendaciones'),
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


