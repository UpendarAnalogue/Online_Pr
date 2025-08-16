import 'package:flutter/material.dart';

class DuplicatePr extends StatefulWidget {
  const DuplicatePr({super.key});

  @override
  State<DuplicatePr> createState() => _DuplicatePrState();
}

void _showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // rectangle shape (no rounded edges)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top Row - Yellow background
          Container(
            color: Colors.yellow,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "EXIT",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          // Bottom Row - White background with message
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: const Text(
              "EXIT THE ONLINE COLLECTION SCREENS",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
          ),

          // Buttons Row
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cancel Button
                Container(
                  width: 100, // rectangle width
                  height: 40, // rectangle height
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextButton(
                                        onPressed: () => Navigator.of(context).pop(),

                    child: const Text("NO"),
                  ),
                ),
                const SizedBox(width: 20),
                // Exit Button
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // close dialog
                      Navigator.pop(context); // exit screen
                     },
                    child: const Text("EXIT"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class _DuplicatePrState extends State<DuplicatePr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => _showCustomDialog(context),
        ),

        backgroundColor: const Color.fromARGB(255, 16, 156, 188),
        title: const Text('DUPLICATAE PR', style: TextStyle(fontSize: 18)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.all(8),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ENTER USCNO :",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 6),
                      const TextField(
                        decoration: InputDecoration(
                          border:
                              const UnderlineInputBorder(), // bottom border only
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // border color
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ), // when focused
                          ),
                          //hintText: "Enter USCNO",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "(OR)",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                      const Text("ENTER SCNO", style: TextStyle(fontSize: 14)),
                      const SizedBox(height: 6),
                      const TextField(
                        decoration: InputDecoration(
                          border:
                              const UnderlineInputBorder(), // bottom border only
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // border color
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ), // when focused
                          ),
                          //hintText: "Enter USCNO",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "(OR)",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                      const Text(
                        "ENTER PR NO:",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 6),
                      const TextField(
                        decoration: InputDecoration(
                          border:
                              const UnderlineInputBorder(), // bottom border only
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // border color
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ), // when focused
                          ),
                          // hintText: "Enter USCNO",
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          //color: const Color.fromARGB(255, 113, 9, 10),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},

                          child: const Text("ISSUE DUPLICATE RECEIPT"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
