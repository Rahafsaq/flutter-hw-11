import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          const Icon(
            Icons.person,
            size: 120,
            color: Colors.grey,
          ),
          const Text(
            'Login',
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Choose the appropriate method:',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.phone_android_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'SMS',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.email_rounded,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'E-mail',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 138,
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
