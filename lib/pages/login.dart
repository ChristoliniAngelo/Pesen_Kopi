import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pesen_kopi/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: Center(
          child: Text('Login Page'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Username")),
            TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
