import 'package:evaluacion3_nayeli/sliverappbar.dart';
import 'package:flutter/material.dart';
import 'customscrollview.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/customscrollview': (context) => InicioPage(),
        '/sliverappbar': (context) => MiPagina(),

        },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen3Ade'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text('Pantalla principal'),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Adelayda Dessire Henriquez Alvarado'),
            accountEmail: Text('adelaydahenriquez@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_sharp),
            title: Text('customscrollview'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/customscrollview');
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_sharp),
            title: Text('sliverappbar'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú
              Navigator.of(context).pushNamed('/sliverappbar');
            },
          ),
        ],
      ),
    );
  }
}
