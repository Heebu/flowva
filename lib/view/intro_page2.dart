import 'package:flowva/view/reuseables/tool_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({
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
          ToolCard(title: 'Designers Toolkit ',
            isUp: true,
            subtitle: '1,200 creatives trust this stack',
            logo: ['images/figma.png', 'images/framer.png', 'images/canva.png'],),
          ToolCard(title: ' Indie Hacker’s Essentials',
            isUp: false,
            subtitle: 'Curated by Sam Ortega  building profitable products solo',
            logo: ['images/play.png', 'images/notion.png', 'images/skype.png'],),
          ToolCard(title: 'Remote Team Starter Pack',
            isUp: true,
            subtitle: 'Curated by Kendra Holt helping distributed teams thrive',
            logo: ['images/slack.png', 'images/scoope.png', 'images/loom.png'],),
        ],
      ),
    );
  }
}
