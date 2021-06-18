import 'package:flutter/material.dart';
class Authform extends StatefulWidget {
 

  @override
   AuthformState createState() =>  AuthformState();
}

class  AuthformState extends State <Authform> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding (padding: EdgeInsets.all(16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'username',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      ),
                    obscureText: true,
                  ),
                  SizedBox(height :12),
                 ElevatedButton(child:Text('Login'),
                 onPressed:(){} ,),
                 TextButton(onPressed: (){},
                  child: Text('Create new account'))
                ],
              ),
              ),)
          ),
        ),
      );
  }
}