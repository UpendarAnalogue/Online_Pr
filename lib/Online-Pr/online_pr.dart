import 'package:flutter/material.dart';
import 'package:online_pr/Online-Pr/online_Pr_Menu.dart';

class OnlinePr extends StatefulWidget {
  const OnlinePr({super.key});

  @override
  State<OnlinePr> createState() => _OnlinePrState();
}

class _OnlinePrState extends State<OnlinePr> {
  String? acdValue; // For INCLUDE ACD AMT
  String? rcValue; // For INCLUDE RC AMT

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(255, 16, 156, 188),
        title: const Text('ONLINE PR', style: TextStyle(fontSize: 18)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // First card
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
                      const Text("ENTER USCNO", style: TextStyle(fontSize: 14)),
                      const SizedBox(height: 6),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter USCNO",
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
                          border: OutlineInputBorder(),
                          hintText: "Enter SCNO",
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 3, 114, 75),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OnlinePrMenu(),
                              ),
                            );
                          },

                          child: const Text("GET BILL DETAILS"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Second card
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
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "BILL DETAILS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Bill details rows
                      _buildDetailRow("NAME", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("USCNO", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("SCNO", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("BILL DATE", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("DUE DATE", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("DISC. DATE", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("CC AMT", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("ARR AMT", "-"),

                      const Divider(thickness: 1, color: Colors.grey),
                      _buildDetailRow("TOTAL BILL AMT", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      const SizedBox(height: 20),
                      const Text("INCLUDE ACD AMT"),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: "Yes",
                                  groupValue: acdValue,
                                  onChanged: (value) {
                                    setState(() {
                                      acdValue = value!;
                                    });
                                  },
                                ),
                                const Text("YES"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: "No",
                                  groupValue: acdValue,
                                  onChanged: (value) {
                                    setState(() {
                                      acdValue = value!;
                                    });
                                  },
                                ),
                                const Text("NO"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(thickness: 1, color: Colors.grey),

                      const SizedBox(height: 10),
                      const Text("INCLUDE RC AMT"),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: "Yes",
                                  groupValue: rcValue,
                                  onChanged: (value) {
                                    setState(() {
                                      rcValue = value!;
                                    });
                                  },
                                ),
                                const Text("YES"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: "No",
                                  groupValue: rcValue,
                                  onChanged: (value) {
                                    setState(() {
                                      rcValue = value!;
                                    });
                                  },
                                ),
                                const Text("NO"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(thickness: 1, color: Colors.grey),

                      const SizedBox(height: 10),
                      const Text("ENTER AMOUNT EXCLUDING RC (IF ANY)"),
                      const SizedBox(height: 6),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter amount",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      _buildDetailRow("RC AMT", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("ACD AMT", "-"),
                      const Divider(thickness: 1, color: Colors.grey),

                      _buildDetailRow("TOTAL AMOUNT", "-"),
                      const Divider(thickness: 2, color: Colors.grey),

                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.red, // 🔴 background
                            foregroundColor: Colors.white, // ⚪ text color
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.zero, // ⬜ rectangular edges
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("GENERATE RECEIPT"),
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

  // helper method for bill detail rows
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(children: [Text(label), const Spacer(), Text(value)]),
    );
  }
}
