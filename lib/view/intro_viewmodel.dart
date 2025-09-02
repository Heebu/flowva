import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class IntroViewmodel extends BaseViewModel{
  PageController pageController = PageController();
  int pageNumber = 0;

 void onChangePage(value){
   if(value < 4 ){
     pageNumber = value;
     pageController.jumpToPage(pageNumber);
     notifyListeners();
   }{
     print('The end');
   }
 }

}