import 'package:flutter/material.dart';

class PrintLastPr extends StatefulWidget {
  const PrintLastPr({super.key});

  @override
  State<PrintLastPr> createState() => _PrintLastPrState();
}

class _PrintLastPrState extends State<PrintLastPr> {
  void _showNoLastPrints(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.red,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Text(
                "ERROR",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),

            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "NO DATA",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),

            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
            _showNoLastPrints(context);
          },
          borderRadius: BorderRadius.circular(70),
          child: Container(
            width: 140,
            height: 140,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 6, 14, 168),
            ),
            child: const Center(
              child: Text(
                "PRINT LAST PR",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
