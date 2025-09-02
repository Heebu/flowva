import 'package:flowva/view/reuseables/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.all(16.sp),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          SubscriptionCard(title: 'Framer', amount: 12, subtitle: 'Build in 4 days', logo: 'images/framer.png', widget:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('View', style: TextStyle(color: Colors.purple),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.purple.shade50)),),
              ElevatedButton(onPressed: (){}, child: Text('Remind', style: TextStyle(color: Colors.black),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.grey.shade50)),),
              ElevatedButton(onPressed: (){}, child: Text('Cancel', style: TextStyle(color: Colors.red),), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red.shade50)),),

            ],
          ),),
          SubscriptionCard(title: 'Figma', amount: 12, subtitle: 'Build in 9 days', logo: 'images/figma.png'),
          SubscriptionCard(title: 'Notion', amount: 12, subtitle: 'Build in 16 days', logo: 'images/notion.png'),
          SubscriptionCard(title: 'ChatGPT', amount: 12, subtitle: 'Build in 24 days', logo: 'images/chatgpt.png'),
          SubscriptionCard(title: 'Blender', amount: 12, subtitle: 'Build in 24 days', logo: 'images/blender.png'),
        ],
      ),
    );
  }
}
