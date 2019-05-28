import 'package:flutter/material.dart';

@protected
class Contact {
  Contact({this.name, this.email});
  final String name;
  final String email;
}

List<Contact> allContacts = [
  Contact(name: 'Isa Tusa', email: 'isa.tusa@me.com'),
  Contact(name: 'Racquel Ricciardi', email: 'racquel.ricciardi@me.com'),
  Contact(name: 'Teresita Mccubbin', email: 'teresita.mccubbin@me.com'),
];

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: allContacts.length,
          itemBuilder: (context, int index) {
            Contact contact = allContacts[index];
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.email),
              leading: CircleAvatar(
                child: Text(contact.name[0]),
              ),
            );
          },
        ),
      ),
    );
  }
}