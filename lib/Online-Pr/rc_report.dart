import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart'; // For formatting date

class RcReport extends StatefulWidget {
  const RcReport({super.key});

  @override
  State<RcReport> createState() => _RcReportState();
}

class _RcReportState extends State<RcReport> {
   DateTime selectedDate = DateTime.now();

   String get formattedDate => DateFormat('dd/MM/yyyy').format(selectedDate);

   Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // default = today
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

   void _showNoReportsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, 
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             
            Container(
              color: Colors.red,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Text(
                "NO REPORTS",
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
                "NO REPORTS FOUND FOR SELECTED DATE",
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
        title: const Text('RC REPORT', style: TextStyle(fontSize: 18)),
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
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "SELECT DATE :",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 6),

                      InkWell(
                        onTap: () => _selectDate(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                color: Color.fromARGB(255, 40, 40, 41),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Get Report Button
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.green,
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
                            _showNoReportsDialog(context);
                          },
                          child: const Text("GET REPORT"),
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
