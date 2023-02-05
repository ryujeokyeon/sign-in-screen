import 'package:flutter/material.dart';
import 'package:latihan_slicing/views/screenV1.dart';
import 'package:latihan_slicing/views/screenV2.dart';

class HalamanApp extends StatelessWidget {
  const HalamanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      appBar: AppBar(
        title: const Text('Annisa - Latihan Slicing part 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign in Screen',
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ScreenV1();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    '<< Screen V1',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ScreenV2();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Screen V2 >>',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
