import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset("assets/images/backgtound.png").image,
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 100,
                  width: 50,
                  child: IconButton(
                      icon: Icon(
                        Icons.settings,
                        size: 40,
                      ),
                      onPressed: () {}),
                ),
                SizedBox(
                  width: 70,
                ),
                Image(
                  alignment: Alignment.topCenter,
                  height: 150,
                  width: 200, //Napta_img
                  image: Image.asset("assets/images/NAPTA (1)_ccexpress.png")
                      .image,
                ),
                //1
              ],
            ),
            Container(
              height: 400,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green[600], width: 2.0),
                      borderRadius: BorderRadius.circular(40), //Card
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: 180,
                          child:
                              Stack(alignment: Alignment.center, children: [
                            //photo stack
                            CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage(
                                  "assets/images/HazemTaha.jpeg"), //avtar if my img
                            ),


                            Container(
                                height: 180,
                                width: 180,

                                child: Image(

                                    image:
                                        AssetImage("assets/images/Cover.png"),

                                ),

                            ),
                                Container(
                                  width: 170,
                                  height: 170,
                                  alignment: Alignment.bottomRight,
                                  child: IconButton(
                                    icon: Icon(Icons.camera_alt_rounded),
                                    iconSize: 40,
                                    onPressed: () {},
                                  ),
                                ),

                              ]),
                        ),
                        Text(
                          "Hazem Taha",
                          style: TextStyle(
                              color: Colors.green[900],
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50.0,
                            ),
                            Text(
                              "E-mail",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image: AssetImage("assets/images/email.png"),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Hazemtaha@gmail.com",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 52.0,
                            ),
                            Text(
                              "Phone",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  decoration: TextDecoration.none),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image:
                                    AssetImage("assets/images/phone (1).png"),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "+20 01004109343",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              "Nationality",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image: AssetImage("assets/images/germany.png"),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: Text(
                                "Egyption",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 250,
                          height: 40,
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            label: Text(
                              "UPDATE",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            backgroundColor: Colors.green[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Interested Plants",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                  letterSpacing: 1.5),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) => Container(
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage("assets/images/HazemTaha.jpeg"),
                      ),
                      Text(
                        "Tomato",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                itemCount: 13,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
