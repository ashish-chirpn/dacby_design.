import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
     HomeView({Key? key}) : super(key: key);

    @override
    TextEditingController nameController = TextEditingController();

    Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100.0,),
            Text(
              'Welcome To DACBY',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Lorem ipsum dolor sit  amet, consecteur',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'adipiscing elit. Morbi eget mi saggitis, tristique',
              style: TextStyle(fontSize: 14),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //labelText: 'Email',
                  hintText: 'Enter your E-mail address',
                ),
              ),
            ),
            Container(
              width: 320,
              height: 60,
              child: ElevatedButton(

                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(150.0),
                  ),),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
