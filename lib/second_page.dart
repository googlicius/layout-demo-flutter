import 'package:flutter/material.dart';
import 'package:flutter_demo_layout/pages/list_page.dart' show Contact, allContacts;

class ScreenArgument {
  final Contact contact;
  ScreenArgument({this.contact});
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArgument screenArgument = ModalRoute.of(context).settings.arguments;
    String title = screenArgument.contact.name;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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