import 'package:aula2107/data/mock_data.dart';
import 'package:aula2107/produto.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class CadastroProduto extends StatefulWidget {
  static String routeName = '/cadastro';
  @override
  _CadastroProdutoState createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
  TextEditingController _nome = TextEditingController();
  TextEditingController _descricao = TextEditingController();
  Produto produto = Produto();

  @override
  void dispose() {
    _nome.dispose();
    _descricao.dispose();
    // foto
    super.dispose();
  }
  void save( ) {
    produto.nome = _nome.text;
    produto.descricao = _descricao.text;
    MockData.produtos.add(produto);
    Navigator.of(context).pop();
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de produtos'),
      ),
      body: ListView(
        children: <Widget>[
          // colocar o campo de imagem 
          // colocar botao de tirar foto
          // colocar botao de selecionar foto
          Form(
              child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                controller: _nome,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Descricao'),
                controller: _descricao,
              ),
              Row(
                children: <Widget>[
                  RaisedButton.icon(
                      onPressed: (                        
                      ) {
                        save();
                        },
                      icon: Icon(Icons.save),
                      label: Text('Cadastrar')),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
