
import 'package:flutter/material.dart' ;
import 'package:expense_tracker_app/services/auth.dart';




class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

     return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: <Widget> [
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
          ),
       
        ]),
     );
      
  }
}