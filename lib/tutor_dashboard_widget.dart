import 'package:flutter/material.dart';

class TutorDashWidget extends StatefulWidget {
  const TutorDashWidget({super.key});

  @override
  State<TutorDashWidget> createState() => _TutorDashWidgetState();
}

class _TutorDashWidgetState extends State<TutorDashWidget> {
  @override
  Widget build(BuildContext context) {
    // Tutor Dashboard Main UI
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF4B39EF), Color(0xFF39D2C0)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Text(
                            'Back to Settings',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Tutor Dashboard',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Monitor and manage your financial activities',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Dashboard Content Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Overview Section
                    const Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4B39EF),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x20000000),
                            blurRadius: 4.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Balance',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            '\$150.00',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // Actions Section
                    const Text(
                      'Actions',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4B39EF),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Add Funds Button
                        ElevatedButton(
                          onPressed: () {
                            // Add Funds Action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF39D2C0),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 24.0),
                          ),
                          child: const Text('Add Funds'),
                        ),
                        // Set Spending Limit Button
                        ElevatedButton(
                          onPressed: () {
                            // Set Spending Limit Action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4B39EF),
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 24.0),
                          ),
                          child: const Text('Set Limit'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    // Activity Log Section
                    const Text(
                      'Recent Activities',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4B39EF),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3, // Example: 3 recent activities
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.attach_money),
                            title: Text('Transaction $index'),
                            subtitle: const Text('Description of the transaction'),
                            trailing: const Text('-\$20.00'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
