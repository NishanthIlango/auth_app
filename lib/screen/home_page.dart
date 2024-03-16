import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  static String routeName='/homePage';
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _userEmail;

  @override
  void initState() {
    super.initState();
    _fetchUserEmail();
  }

  Future<void> _fetchUserEmail() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        _userEmail = user.email;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            _userEmail != null
                ? Text(
                    'Email: $_userEmail',
                    style: TextStyle(fontSize: 18),
                  )
                : CircularProgressIndicator(), // Display loading indicator if email is not fetched yet
          ],
        ),
      ),
    );
  }
}