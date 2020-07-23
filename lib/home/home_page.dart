import 'package:aula2107/home/cadastro_produto.dart';
import 'package:aula2107/home/lista_produto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView (
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader (
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text('menu'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('home page'),
              onTap:  () {
                Navigator.of(context).pushNamed(HomePage.routeName);
              },
            ),
             ListTile(
              leading: Icon(Icons.list),
              title: Text('list page'),
              onTap:  () {
                Navigator.of(context).pushNamed(ListaProduto.routeName);
              },
            ),

            ListTile(
              leading: Icon(Icons.add),
              title: Text('cadastro de produto'),
              onTap:  () {
                Navigator.of(context).pushNamed(CadastroProduto.routeName);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar (
        title: Text('home page'),
      ),
      body: Center(
        child: Text (
          'seja bem vindo',
          style: TextStyle(fontSize:  26),
        )
      )
    );
  }
}
