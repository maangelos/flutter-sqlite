import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wbanco/models/contact.dart';
import 'package:wbanco/database/dao/contact_dao.dart';


class ContactForm extends StatefulWidget {

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cpfControllerr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome completo'
              ),
              style: TextStyle (
                fontSize: 20.0
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _cpfControllerr,
                decoration: InputDecoration(
                  labelText: 'CPF'
                ),
                style: TextStyle (
                  fontSize: 20.0
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text('Criar', style: TextStyle(color: Colors.white),), onPressed: () {
                  final String name = _nameController.text;
                  final int cpf = int.tryParse(_cpfControllerr.text);
                  final ContactDao _dao = ContactDao();
                  final Contact novoContato = Contact(0,name,cpf);
                  _dao.save(novoContato).then((id) => Navigator.pop(context));
                },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}