import 'package:f/UTILS/Authantication.dart';
//import 'package:f/main.dart';
import 'package:f/page%20two.dart';
import 'package:flutter/material.dart';

class auth extends StatefulWidget {
  const auth({super.key});

  @override
  State<auth> createState() => _authState();
}

class _authState extends State<auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF192359),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              "use your fingerprint to log into the app",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 28,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                bool auth = await Authentication.authentication();
                print("can authanticate:$auth");

                if (auth) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myapp()));
                }
              },
              icon: Icon(Icons.fingerprint_sharp),
              label: Text("Authantication"),
            ),
          ],
        ),
      )),
    );
  }
}
