import 'package:aula2107/data/mock_data.dart';
import 'package:flutter/material.dart';

class ListaProduto extends StatefulWidget {
  static String routeName = '/lista';
  @override
  _ListaProdutoState createState() => _ListaProdutoState();
}

class _ListaProdutoState extends State<ListaProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de produtos'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        // aqui dentro carregar a imagem pelo FileImage (widget) que recebe um path 
        // FileImage(File(path))
        // path é o endereço do meu produto
        // ou Image.file(File(path)) 
        itemBuilder: (context, index) =>  Text (MockData.produtos.elementAt(index).nome),
        itemCount: MockData.produtos.length,
        ),
    );
  }
}
