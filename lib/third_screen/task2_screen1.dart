import 'package:flutter/material.dart';

class FurnitureScreen extends StatefulWidget {
  @override
  State<FurnitureScreen> createState() => _FurnitureScreenState();
}

class _FurnitureScreenState extends State<FurnitureScreen> {
  var currentIndex = 0;
  List<bool> selectors = [];
  void selectItem(index)
  {
    setState(() {
      selectors[currentIndex] = false; //currentIndex=0
      currentIndex = index; //currentIndex=1
      selectors[currentIndex] = true;
    });
  }
  void initIndex(){
    for (int i =0 ; i<10;i++){
      selectors.add(false); //false,false,false,false,false,false,false,false,false,false,false
    } // length = 10
  }
  @override
  void initState() {
    initIndex();
    super.initState();
  }
  List<String> images = [
    "https://img.freepik.com/free-photo/loft-style-house-with-armchair-sofa-accessories-room-3d-rendering_41470-3342.jpg?w=740",
    "https://img.freepik.com/free-psd/picture-frame-mockup-psd-hanging-modern-living-room-home-decor-interior_53876-114536.jpg?w=740",
    "https://img.freepik.com/free-photo/simple-minimal-cabinet-tv-interior-white-wall-mockup-3d-rendering_41470-4194.jpg?w=740",
    "https://img.freepik.com/free-photo/chic-modern-luxury-aesthetics-style-living-room-blue-tone_53876-125839.jpg?w=740",
    "https://as1.ftcdn.net/v2/jpg/02/49/46/62/1000_F_249466291_0CPSL7DJnW6muY3gVqDHVNaU7CqSiBwZ.jpg",
  ];
  List<String>labels=["chairs","sofra","tables","beds"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                      color: Color(0xff44655E),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.table_rows_sharp,
                              color: Colors.white,
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                )),
                            Container(
                              child: Image(
                                width: 60,
                                height: 60,
                                image: NetworkImage(
                                    "https://img.freepik.com/free-photo/surprised-cute-girl-gasping-amazed-saying-wow-looking-camera-astonished-hear-interesting-news-checking-out-promo-offer-standing-against-blue-background_1258-69722.jpg?size=626&ext=jpg&ga=GA1.1.2144012143.1644739882"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                          height: 200,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildListItem(images[index]),
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 20,
                                  ),
                              itemCount: images.length)),
                      SizedBox(height: 10,),Container(height: 50,child:
                      ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index) => InkWell(
                            onTap: () {
                              selectItem(index);
                            },
                            child: Card(

                              color: selectors[index] ?  Color(0xff44655E) :Color(0xffD2E2E9),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(labels[index],style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ),
                          separatorBuilder: (context,index) => const SizedBox(width: 15,),
                          itemCount:labels.length),)
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                            height: 200,
                            width: 170,
                            child: Card(
                              color: Color(0xffD2E2E9),
                            )),
                        Card(
                          color: Color(0xff839793),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "new",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Green Chairs"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("30"),
                                  Spacer(),
                                  Icon(Icons.star),
                                  Text("3.8")
                                ],
                              ),
                              Container(
                                height: 160,
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image(
                                    image: NetworkImage(
                                        "https://img.freepik.com/free-psd/comfortable-modern-chair-isolated_176382-1215.jpg?w=740"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                            height: 200,
                            width: 170,
                            child: Card(
                              color: Color(0xffD2E2E9),
                            )),
                        Card(
                          color: Color(0xff839793),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "new",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Green Chairs"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("60"),
                                  Spacer(),
                                  Icon(Icons.star),
                                  Text("2.1")
                                ],
                              ),
                              Container(
                                height: 160,
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7DnNOwyavjdp1cViaqWEMNj4vs6v1FLx65Q&usqp=CAU"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildListItem(list) {
    return Container(
      height: 200,
      width: 150,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image(fit: BoxFit.cover, image: NetworkImage(list)),
      ),
    );
  }
}
