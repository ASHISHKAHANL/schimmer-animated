import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SchimmerPage extends StatefulWidget {
  const SchimmerPage({super.key});

  @override
  State<SchimmerPage> createState() => _SchimmerPageState();
}

class _SchimmerPageState extends State<SchimmerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mySchimmerLoader(),
    );
  }

  mySchimmerLoader() {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
              ),
              const SizedBox(width: 15),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  Container(height: 20, color: Colors.white),
                  const SizedBox(height: 10),
                  Container(height: 20, width: 150, color: Colors.white),
                ],
              ))
            ],
          ),
        ));
  }
}
