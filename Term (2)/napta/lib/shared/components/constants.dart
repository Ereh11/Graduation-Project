
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

defButton(
     double width,
    Color c

     ){
   Container(
     width: width,
     height:40,
     child:FloatingActionButton.extended(
       onPressed: () {},

       label: Text("UPDATE"),
       backgroundColor:c,
     ),
   );
 }
