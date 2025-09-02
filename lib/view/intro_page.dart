import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';
import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_viewmodel.dart';



class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: () => IntroViewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Stack(
                children: [
                  PageView(
                    controller: viewModel.pageController,
                    onPageChanged: (value){
                      viewModel.onChangePage(value);
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Image(image: AssetImage('images/flowva.png')),
                      ),
                      IntroPage1(),
                      IntroPage2(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Image(image: AssetImage('images/flowva.png')),
                      ),
                    ],
                  ),


                 if( viewModel.pageNumber == 1)
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.white.withOpacity(.05),
                          Colors.white.withOpacity(.7),Colors.white
                        ],
                            begin: Alignment.topCenter, end: Alignment.bottomCenter)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 40.h),
                        const Text(
                          "Keep track of every subscription",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 5.h),
                        const Text(
                          "Stay on top of what you pay for.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade100,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: SmoothPageIndicator(
                              controller: viewModel.pageController,  // PageController
                              count:  4,
                              effect:  WormEffect(
                                  activeDotColor: Colors.black,
                                  dotWidth: 8.w, dotHeight: 8.h,
                                  spacing: 10
                              ),  // your preferred effect
                              onDotClicked: (index){
                                viewModel.onChangePage(index);
                              }
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: GestureDetector(
                            onTap: () {
                              viewModel.onChangePage(viewModel.pageNumber +1);
                            },
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
                                "Next",
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
                  if(viewModel.pageNumber ==2)
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.transparent
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 40.h),
                          SizedBox(
                            width: 200.w,
                            child: const Text(
                              "Work like the best",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          const Text(
                            "Discover proven tools from the people who master their craft",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade100,
                                borderRadius: BorderRadius.circular(10.r)
                            ),
                            child: SmoothPageIndicator(
                                controller: viewModel.pageController,  // PageController
                                count:  4,
                                effect:  WormEffect(
                                    activeDotColor: Colors.black,
                                    dotWidth: 8.w, dotHeight: 8.h,
                                    spacing: 10
                                ),  // your preferred effect
                                onDotClicked: (index){
                                  viewModel.onChangePage(index);
                                }
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GestureDetector(
                              onTap: () {
                                viewModel.onChangePage(viewModel.pageNumber +1);
                              },
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
                                  "Next",
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

                  if(viewModel.pageNumber !=2 && viewModel.pageNumber !=1 )
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h,
                          ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: SmoothPageIndicator(
                          controller: viewModel.pageController,  // PageController
                          count:  4,
                          effect:  WormEffect(
                              activeDotColor: Colors.black,
                          dotWidth: 8.w, dotHeight: 8.h,
                            spacing: 10
                          ),  // your preferred effect
                          onDotClicked: (index){
                            viewModel.onChangePage(index);
                          }
                      ),
                      ),
                      SizedBox(height: 40.h),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GestureDetector(
                          onTap: () {
                            viewModel.onChangePage(viewModel.pageNumber +1);
                          },
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
                            child: Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ],
              ),
            ),
          );
        },);
  }
}






