import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/third_screen/task2_screen1.dart';


class Selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          Icon(
            Icons.lock,
            color: Color(0xff839793),
          ),
          SizedBox(
            width: 20,
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff839793)),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>FurnitureScreen()));},
        ),
        title: Text(
          "sofa",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/white-wall-living-room-have-sofa-decoration-3d-rendering_41470-3282.jpg?w=826"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Blue Sofa",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                Text(
                  '65\$',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(color: Color(0xff839793), height: 1.3),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "color",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Row(
                    children: [
                     CircleAvatar(radius: 12,
                       backgroundColor: Colors.grey,), SizedBox(width: 5,),CircleAvatar(radius: 12,
                        backgroundColor: Colors.blue,),SizedBox(width: 5,), CircleAvatar(radius: 12,
                        backgroundColor: Colors.yellow,), SizedBox(width: 5,),CircleAvatar(radius: 12,
                        backgroundColor: Colors.pink
                        ,),SizedBox(width: 5,),CircleAvatar(radius: 12,
                        backgroundColor: Colors.black),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Quantity",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  width: 30,
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xffD2E2E9),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                            foregroundColor: Colors.white,
                            radius: 18,
                            backgroundColor: Color(0xff839793),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text("01"),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                            foregroundColor: Colors.white,
                            radius: 18,
                            backgroundColor: Color(0xff839793),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.minimize,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffD2E2E9),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text("Add to car")),
                  ),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff839793),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text("Buy now")),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
