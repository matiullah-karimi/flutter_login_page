import 'package:flutter/material.dart';
import 'package:login_screen/login.dart';
import 'package:login_screen/widgets/Button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.asset('assets/girl.png'),
            ),
            SizedBox(height: 48),
            Text(
              'Discover your',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(
              'Dream job here',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(height: 24),
            Text(
              'Explore all the most exiting jobs roles',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            Text(
              'based on interest and study major',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
            SizedBox(height: 48),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Button(
                label: 'Get started',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
