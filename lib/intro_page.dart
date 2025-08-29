import 'package:flutter/material.dart';


class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptions = [
      Subscription(
        name: "Framer",
        price: "\$12",
        days: "Billed in 4 days",
        gradient: [Color(0xFFFFE1E6), Color(0xFFFDE6F3)],
        buttons: ["View", "Remind", "Cancel"],
      ),
      Subscription(
        name: "Figma",
        price: "\$12",
        days: "Billed in 9 days",
        gradient: [Color(0xFFE0F7FA), Color(0xFFECEFF1)],
      ),
      Subscription(
        name: "Notion",
        price: "\$12",
        days: "Billed in 16 days",
        gradient: [Color(0xFFF5F5F5), Color(0xFFF9F9F9)],
      ),
      Subscription(
        name: "ChatGPT",
        price: "\$12",
        days: "Billed in 24 days",
        gradient: [Color(0xFFF8F8F8), Color(0xFFF0F0F0)],
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F8),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Color(0xFFFFE1E6), Color(0xFFFDE6F3),
            Colors.white70,
            Color(0xFFE0F7FA), Color(0xFFECEFF1),
                Colors.white70,
            Color(0xFFF5F5F5), Color(0xFFF9F9F9),
                Colors.white70,
            Color(0xFFF8F8F8), Color(0xFFF0F0F0),
                Colors.white70,
          ], begin: Alignment.topLeft,
            end: Alignment.bottomRight,

          )
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      ...subscriptions.map((sub) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SubscriptionCard(subscription: sub),
                      )),
                      const SizedBox(height: 40),
                      const Text(
                        "Keep track of every subscription",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Stay on top of what you pay for.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.grey,
                          Colors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Get started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Subscription {
  final String name;
  final String price;
  final String days;
  final List<Color> gradient;
  final List<String> buttons;

  Subscription({
    required this.name,
    required this.price,
    required this.days,
    required this.gradient,
    this.buttons = const [],
  });
}

class SubscriptionCard extends StatelessWidget {
  final Subscription subscription;

  const SubscriptionCard({super.key, required this.subscription});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.4),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left section: Name and Billing Info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subscription.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subscription.days,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          // Right section: Price or Buttons
          subscription.buttons.isEmpty
              ? Text(
            subscription.price,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
              : Row(
            children: subscription.buttons.map((btn) {
              final isCancel = btn == "Cancel";
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 8),
                    backgroundColor:
                    isCancel ? Colors.redAccent : Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    btn,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
