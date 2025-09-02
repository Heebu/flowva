import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({
    super.key, required this.title, required this.amount, required this.subtitle, required this.logo, this.widget,
  });
  final String title;
  final int amount;
  final String subtitle;
  final String logo;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      margin: EdgeInsets.only(bottom: 10.h),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image(image: AssetImage(logo)),
              SizedBox(
                width: 10.w,
              ),
              Text(title, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),),
              Spacer(),
              Column(
                children: [
                  Text('\$$amount', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),),
                  Text(subtitle, style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.sp,
                  ),),
                ],
              )
            ],
          ),
          widget != null? SizedBox(
            height: 15.h,
          ): SizedBox.shrink(),

          widget?? SizedBox.shrink()
        ],
      ),
    );
  }
}
