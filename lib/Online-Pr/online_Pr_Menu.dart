import 'package:flutter/material.dart';
import 'package:online_pr/Online-Pr/duplicate_pr.dart';
import 'package:online_pr/Online-Pr/print_last_pr.dart';
import 'package:online_pr/Online-Pr/rc_report.dart';

class OnlinePrMenu extends StatefulWidget {
  const OnlinePrMenu({super.key});

  @override
  State<OnlinePrMenu> createState() => _OnlinePrMenuState();
}

class _OnlinePrMenuState extends State<OnlinePrMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color.fromARGB(255, 16, 156, 188),
        title: const Text('ONLINE PR MENU', style: TextStyle(fontSize: 18)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // align left
          children: [
            // First Row (3 icons)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: buildMenuIcon(
                    Icons.collections,
                    "ONLINE COLLECTION",
                    () {
                      debugPrint("ONLINE COLLECTION pressed");
                      // 👉 Navigate or show dialog here
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: buildMenuIcon(
                    Icons.settings,
                    "ISSUE DUPLICATE RECEIPT",
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DuplicatePr(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: buildMenuIcon(
                    Icons.notifications,
                    "PRINT LAST PR",
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrintLastPr()),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40), // space between rows
            // Second Row (1 icon directly below first icon of row 1)
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: buildMenuIcon(Icons.help, "REPORTS", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RcReport()),
                    );
                  }),
                ),
                const Spacer(flex: 4), // pushes it below the first icon only
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Reusable widget for Icon + Label + onTap
  Widget buildMenuIcon(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Icon(icon, size: 50, color: Colors.blue),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 9),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
