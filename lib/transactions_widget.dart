import 'package:flutter/material.dart';

class TransactionsWidget extends StatelessWidget {
  const TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4B39EF),
      body: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B39EF), Color(0xFF39D2C0)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Add navigation or action here
                          },
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Transactions',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Review your spending history',
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add filter action here
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'This Month',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                              '-\$1,234.56',
                              style: TextStyle(color: Colors.red, fontSize: 20.0),
                            ),
                          ],
                        ),
                        const Divider(),
                        const SizedBox(height: 16.0),
                        _buildTransactionItem(
                          context,
                          'Grocery Shopping',
                          'May 15, 2023',
                          '-\$85.50',
                          Icons.shopping_cart,
                        ),
                        _buildTransactionItem(
                          context,
                          'Gas Station',
                          'May 14, 2023',
                          '-\$45.75',
                          Icons.local_gas_station,
                        ),
                        _buildTransactionItem(
                          context,
                          'Restaurant',
                          'May 13, 2023',
                          '-\$32.40',
                          Icons.restaurant,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionItem(BuildContext context, String title, String date, String amount, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(icon, color: Colors.black54),
              ),
              const SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16.0)),
                  Text(date, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ],
          ),
          Text(amount, style: const TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
