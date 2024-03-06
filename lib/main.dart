import 'package:flutter/material.dart';
import 'package:food/extra/bigfoodinfo.dart';
import 'package:food/extra/firstfoodinfo.dart';
import 'package:food/screen/category.dart';
import 'package:food/screen/foodinfo.dart';
import 'package:food/screen/login_page.dart';
import 'package:food/screen/logincheck.dart';
import 'package:food/screen/newpage.dart';
import 'package:food/screen/page.dart';
import 'package:food/screen/sign_up.dart';
import 'package:food/widgets/item_widget2.dart';
import 'package:food/widgets/item_widgets.dart';
import 'package:food/widgets/item_widgets2.dart';

import 'package:food/widgets/item_widgets3.dart';
import 'package:food/categirywidgets/widgets5.dart';
import 'package:food/categirywidgets/widgets2.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering App',
      theme: ThemeData(

      ),
      home:FoodInfo(),
    );
  }
}
