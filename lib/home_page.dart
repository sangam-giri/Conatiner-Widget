import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          /* color propperty gives color to the container -  if we are using deecoration property we won't be using color */
          
          
          // color: Colors.black,
          
          
          // using padding we can arrange the Widget inside container much more effectively
          padding: EdgeInsets.all(8.0),
          /* Constraints proper' help us give the height and width of the Container Widget. Using BoxConstraints.expand() , makes container take the maximum height and width it can possibly take */
          
          // constraints: BoxConstraints.expand(),

          /* For providing custom width and height to the container. use BoxConstraints() and press Ctrl+Shift and give maxHeight, maxWidth, minHeight, minWidth manually */
          // constraints: BoxConstraints(
            // maxHeight: 100,
          //   minHeight: 100,
          // ),

          // We can align the contents of the container using the alignment property. Alignments like center, centerleft and more 
          alignment: Alignment.center,

          /* The way to assign height and width to the container is by assigning width and height property. It's always better to use constraints in most of the case */
          width: 200,
          height: 100,

          /*We can give rotations and all using transform property. Radians are use in the transfrom property and radians are not the degrees so do check it out if you don't alread know about them. Highly detailed property of Container Widget*/
          
          // transform: Matrix4.rotationZ(0.5),

          /* Using decoration you can change number of properties in container. Using shadow, border, shape, box shadow etc */
          decoration: BoxDecoration(
            // color:  Colors.black, 
            border: Border.all(
              color: Colors.red,
              width: 2.0,
              style: BorderStyle.solid,
              
            ),
            // borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(color: Colors.red,
              blurRadius: 4.0,
              spreadRadius: 2.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
              Colors.blue,
              Colors.lightBlue,

            ]),

            // We can use shape propperty instead of adding border radius 
            shape: BoxShape.circle,
          ),


          /*Using style in Text widget can help us change the size, color, font family, fontweight and many more*/
          child: Text('We are learning Container Widget in this Project',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
