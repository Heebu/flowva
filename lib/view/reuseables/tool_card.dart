import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToolCard extends StatelessWidget {
  const ToolCard({
    super.key, required this.title, required this.subtitle, required this.logo, required this.isUp,
  });
  final String title;
  final String subtitle;
  final List<String> logo;
  final bool isUp;


  @override
  Widget build(BuildContext context) {

    return Transform.rotate(
      angle: isUp? -0.03 : 0.03,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFFFE1E6),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),),

            Row(
              children: [
                for(int x = 0; x< logo.length; x++)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: SizedBox(
                        height: 32.h,
                        child: Image(image: AssetImage(logo[x]))),
                  ),
              ],
            ),


            Text(subtitle, style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 10.sp,
            ),),
          ],
        ),
      ),
    );
  }
}
