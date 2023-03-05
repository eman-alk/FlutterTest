
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/Res/Colors.dart';
import 'package:my_app/login/widgets/CustomButton.dart';

import '../Models/AnimalsModel.dart';
import '../Res/Images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  List<AnimalModel> animals=[
AnimalModel(animalName: "Cat", imageName: "images/cat.png"),
    AnimalModel(animalName: "panda", imageName: "images/panda.JPG"),
  ];
  int pageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.myRed,
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
Center(child: Image.asset("images/panda.JPG",height:200.h ,width:MediaQuery.of(context).size.width, fit: BoxFit.fill,)),
            SizedBox(height: 20,),
            // Container(
            //   height: 100,
            //   child: ListView.builder(itemBuilder: ),
            // )
           Container(color: Colors.white,width: 100,height: 100,child: Text("Container text")),
SizedBox(height: 20,),
Container(
  height: 300,
  child:   PageView(

    children: [

      Image.asset(Images.catImage,height: 100,fit: BoxFit.fitWidth
        ,),

      Column(
        children: [
          Image.asset("images/panda.JPG",height: 100,width: 200,fit: BoxFit.fill),
          Text("Hi"),
          Text("Hiii 2",style:TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: ProjectColors.myBlue
          ) ,),
          Text("Hiii 2",style:TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ProjectColors.myBlue
          ) ,),
          Text("Hiii 3",style:TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ProjectColors.myBlue
          ) ,)
        ],
      ),



    ],

  ),
),
            Container(
              height: 600,
              child: ListView.builder(
                  itemCount: animals.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        child: Row(
                          children: [
                            Image.asset(animals[index].imageName,width: 100,height: 100,fit: BoxFit.fitHeight,),
                            SizedBox(width: 20,),
                            Text(animals[index].animalName),
                          ],
                        ),
                      ),
                    );
                  }),

            ),
            CustomButton(
              text: "Bakoooo",
              color: Colors.pink,
            ),
            CustomButton(
              text: "Bakr",
              color: Colors.blue,
            ), CustomButton(
              text: "Ahman",
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
