import 'package:flutter/material.dart';

class PrintLastPr extends StatefulWidget {
  const PrintLastPr({super.key});

  @override
  State<PrintLastPr> createState() => _PrintLastPrState();
}

class _PrintLastPrState extends State<PrintLastPr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        backgroundColor: const Color.fromARGB(255, 16, 156, 188),
        title: const Text('PRINT LAST PR', style: TextStyle(fontSize: 18)),
      ),
      body: Center(
  child: InkWell(
    onTap: () {
      // Handle button click
      // print("PRINT LAST PR Clicked");
    },
    borderRadius: BorderRadius.circular(70), // to match circle ripple
    child: Container(
      width: 140,  // Circle width
      height: 140, // Circle height
      decoration: const BoxDecoration(
        shape: BoxShape.circle, // Makes it a circle
        color: Color.fromARGB(255, 6, 14, 168), // Circle background color
      ),
      child: const Center(
        child: Text(
          "PRINT LAST PR",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white, // Text color
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ),
)

    );
  }

  // Exit Confirmation Dialog
}
