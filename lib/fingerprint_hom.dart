import 'package:fingerprint/finger_print.dart';
import 'package:fingerprint/home.dart';
import 'package:flutter/material.dart';

class FingerprintHome extends StatelessWidget {
  const FingerprintHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3C3E52),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Lgoin",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 45, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/fingerprint.png",
            color: Colors.white,
            width: 150,
          ),
          const SizedBox(
            height: 28,
          ),
          const Text(
            "Fibgerperint Auth",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 150,
            child: const Text(
              "Authenticate using your fingerprint instead of your of password",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          const Divider(
            color: Colors.white60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              label: const Text(
                "Authentication",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              icon: Icon(Icons.fingerprint),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(double.infinity, 50),
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                final auth = await FingerPrintAuth.authenticate();
                if (auth) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}