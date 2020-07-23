import 'package:aula2107/home/cadastro_produto.dart';
import 'package:aula2107/home/home_page.dart';
import 'package:aula2107/home/lista_produto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// teste commit
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      initialRoute: HomePage.routeName,
      routes:  {
        HomePage.routeName: (context) {
          return HomePage();
        },
        CadastroProduto.routeName: (context) {
          return CadastroProduto();
        },
         ListaProduto.routeName: (context) {
          return ListaProduto();
        }
      },
    );
  }
}

