import 'package:flutter/material.dart';


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:overflow_text_animated/overflow_text_animated.dart';
import 'package:flipkart/productpage.dart';





class flipkart extends StatefulWidget {
  const flipkart({super.key});

  @override
  State<flipkart> createState() => _flipkartState();
}

class _flipkartState extends State<flipkart>{
  bool light = false;
  int currentpage=0;

  List image=[
    "assets/clock.jpeg",
    "assets/shampoo img.jpg",
    "assets/b3.jpeg",
    "assets/fashion.jpg",
    "assets/decor.jpeg",
    "assets/tv img.png",

  ];

  List abc = [
    "assets/carslider1.jpeg",
    "assets/carslider2.jpeg",
    "assets/carslider3.jpeg",
    "assets/carslider4.jpeg",
    "assets/carslider5.jpeg",
  ];
  List brand = [
    "assets/boat img.png",
    "assets/decor.jpeg",
    "assets/fashion3.jpg",
    "assets/boatimg2.jpg",
    "assets/tv img.png",
    "assets/carslider4.jpeg",
  ];

  List mobile = [
    "assets/mobile.jpeg",
    "assets/mobile4.jpg",
    "assets/mobile6.jpg",
    "assets/mobile4.jpg",
    "assets/mobile6.jpg",
    "assets/mobile.jpeg",
  ];

  List def = [
    "clock",
    "shampoo",
    "Beauty",
    "Fashion",
    "Decor",
    "Led Tv",
  ];
  List btext = [
    "True Wireless",
    "Home decor",
    "Fashion",
    "Boat",
    "Led Tv",
    "Sofa set"
  ];
  List bctext =[
    "Flat8% off",
    "Flat 10% off",
    "Flat 20% off",
    "Flat 8% off",
    "Flat 15% off",
    "Flat 50% off"
  ];






  @override
  Widget build(BuildContext context) {
    TextEditingController searchTextController = TextEditingController();


    return Scaffold(
      appBar: AppBar(


        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        title: Column(
          children: [
            Row(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/f-logo.jpeg"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),

                Text(
                  'Flipkart',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Brand Mall',
                      style: TextStyle(
                        fontSize: 13,

                      ),
                    ),SizedBox(height: 5,),

                    Container(
                      height: 20,
                      width: 70,
                      child: FlutterSwitch(
                        activeColor: Colors.black,
                        activeToggleColor: Colors.white,

                        width: 60,
                        height: 100.0,
                        valueFontSize: 30.0,
                        toggleSize: 30.0,
                        value: light,
                        borderRadius: 30.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            light = val;
                          });
                        },
                      ),),

                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 300,
                  color: Colors.white10,

                  child: Stack(
                    children: [
                      TextFormField(
                        controller: searchTextController,
                        decoration: InputDecoration(
                          fillColor: CupertinoColors.systemGrey5,
                          filled: true,
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(CupertinoIcons.search),
                          suffixIcon: Container(
                            width: 60,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(CupertinoIcons.mic),
                                Icon(CupertinoIcons.camera),
                              ],
                            ),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      Positioned(
                        left: 40,
                        top: 8,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('Led'),
                            RotateAnimatedText('Fridge'),
                            RotateAnimatedText('Headphone'),
                            RotateAnimatedText('Led'),
                            RotateAnimatedText('Fridge'),
                            RotateAnimatedText('Headphone'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ],
                  ),
                ),],

            ),
          ],
        ),

      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(

              alignment: AlignmentDirectional.topStart,
              children: [

                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  /// horizontal marquee
                  MarqueeText(
                  text: TextSpan(
                    text: ' LATEST LAUNCHES  +   PREMIUM FINDS  +   100% GENUINE BRANDS  +   LATEST LAUNCHES  +   PREMIUM FINDS  +  100% GENUINE BRANDS',

                  ),

                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  speed: 30,
                ),

              ],
        ),
      ),],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 200,
                            aspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
                            viewportFraction: 1.2,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index,reason){
                              setState(() {
                                currentpage = index;
                              });
                            }
                        ),
                        itemCount: abc.length,
                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                          return Container(

                            width: double.infinity,
                            height: 300,
                            margin: EdgeInsets.symmetric(horizontal: 40.0),

                            color: Colors.black,
                            child: Image.asset(abc[itemIndex],fit: BoxFit.fill,),

                          );
                        },

                      ),
                    ),
                    Container(height: 50,width: double.infinity,color: Colors.black,
                      child: Center(
                        child: Positioned(top: 20,
                            bottom: 10,
                            left: 0,
                            right:0,
                            child: DotsIndicator(
                              dotsCount: abc.length,
                              position:  currentpage.toInt(),
                              decorator: DotsDecorator(
                                color: Colors.cyanAccent,
                                activeColor: Colors.pink,
                              ),
                            )
                        ),
                      ),
                    ),


                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        //border: Border.all()
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: image.length,
                        itemBuilder: (BuildContext c, index) {

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(

                                  margin: EdgeInsets.all(8),width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(image[index]),
                                  ),
                                ),
                                Text(def[index]),

                              ],
                            ),
                          );
                        },
                      ),
                    ),SizedBox(height: 20,),
                    Text('BRANDS OF THE DAY',
                      style:TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,

                      ) ,
                      textAlign: TextAlign.left,
                    ),SizedBox(height: 20,),
                    Container(
                      height: 350,
                      child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 1/ 1.2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                          itemCount: image.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage(brand[index]),
                                        fit: BoxFit.fill),


                                    border: Border.all(),
                                  ),
                                  //child: Text("ok"),
                                ),

                                Text (btext[index]),
                                Text(bctext[index],
                                  style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ) ,),
                              ],
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Selection',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                          ),),
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,))
                      ],
                    ),
                    Container(
                      height: 400,
                      child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 1/ 1.2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                          itemCount: image.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => productpage()),
                                    );
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(mobile[index]),
                                          fit: BoxFit.fill),
                                      border: Border.all(),
                                    ),
                                  ),
                                )



                              ],
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ],
            ),


        ),


    );

  }
}





