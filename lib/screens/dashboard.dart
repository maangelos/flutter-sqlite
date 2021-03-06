import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wbanco/screens/lista_contatos.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end, //na coluna final
        crossAxisAlignment: CrossAxisAlignment.start, //na inicio da linha (a esquerda)
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Theme.of(context).primaryColor,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ContactsList(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 100,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, //espaço entre os elementos de icone e texto
                      crossAxisAlignment: CrossAxisAlignment.start, //inicio do lado esquerdo
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        Text(
                          'Contacts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}