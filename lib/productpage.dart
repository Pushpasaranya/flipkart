import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flipkart/flipkart.dart';




class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  int currentpage = 0;
  List img = [
    "assets/fresh.jpg",
    "assets/fashion4.jpeg",

  ];
  final List<String> items = ['1','2','3','4','5','6',];
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => flipkart()),
              );
            },
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,

                colors: [Color(0xff85D9E3),Color(0xff9DE4D2)],
              ),
            ),
          ),
          backgroundColor: Colors.blue,
          title: Container(
            height: 40,
            width: 330,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Colors.black),
                suffixIcon: Icon(Icons.mic,color: Colors.grey,),
                hintText: "Search in Flipkart.in",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.black),
              ),

            ),
          ),

        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: 417,
                                  aspectRatio: 8/9,
                                  viewportFraction: 1,
                                  initialPage: 4,
                                  enableInfiniteScroll: true,
                                  reverse: false,
                                  autoPlay: false,
                                  autoPlayInterval: const Duration(seconds: 2),
                                  autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
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

                              itemCount: img.length,
                              itemBuilder: (BuildContext context, int index,
                                  int pageViewIndex) {
                                return Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(img[index]),fit: BoxFit.cover
                                    ),),
                                );
                              }
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 360.0),
                            child: IconButton(onPressed: () {},
                              icon: Icon(Icons.share_outlined),
                              color: Colors.yellow,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 380.0),
                            child: IconButton(onPressed: () {},
                                color: Colors.yellow,
                                icon: Icon(Icons.favorite_border_outlined)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade50,
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: DotsIndicator(
                          dotsCount: img.length,
                          position:  currentpage.toInt(),
                          decorator: DotsDecorator(
                            color: Colors.cyanAccent,
                            activeColor: Colors.pink,
                          ),
                        )
                    ),
                  ],
                ),
                Center(
                  child: Text('1K+ bought in past month',style: TextStyle(
                  ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Visit the Samsung Store',style: TextStyle(
                        color: Colors.blue,fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Spacer(),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,),
                      onRatingUpdate:  (rating) {
                        print(rating);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('4650',style: TextStyle(
                        color: Colors.blue,
                      ),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Samsung 7 kg Fully-Automatic Top Loading Washing Machine(WA70A4002GS/TL,'
                      'Imperial Silver,Awarded as Washing Machine Brand of the year)',
                    style:TextStyle(
                        color: Colors.black

                    ) ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.elliptical(30, 40)),
                      color: Colors.black,
                    ),
                    child: Text("Flipkart Choice",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.red,
                    ),
                    child: RichText(textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Great Summer Sale',style: TextStyle(
                                fontSize: 20,color: Colors.white
                            )
                            )
                          ]
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('-41%',style: TextStyle(
                          color: Colors.red,fontSize: 40
                      ),
                      ),

                    ),
                    SizedBox(height: 40,
                      child: Text("\u{20B9}",style: TextStyle(
                        fontSize: 20,color: Colors.black,
                      ),),
                    ),
                    Text("1234",style: TextStyle(
                      fontSize: 50,color: Colors.black,
                    ),),
                    SizedBox(
                      width: 10,
                    ),
                    Text('(\u{20B9}168.94/100 g)',)
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("M.R.P.:",
                        style: TextStyle(
                          color: Colors.grey,fontSize: 15,
                        ),
                      ),
                    ),
                    Text('\u{20B9}640"',style: TextStyle(
                        color: Colors.black54,fontSize: 15,decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Inclusive of all taxes",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),),
                ),Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(text: 'Free Delivery',style: TextStyle(color: Colors.blue)),
                        TextSpan(text: ' Wednesday,8 May',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        TextSpan(text: ' on your first order',style: TextStyle(color: Colors.black)),
                        TextSpan(text: ' Details',style: TextStyle(color: Colors.blue)),
                      ]
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(text: 'or fastest delivery',style: TextStyle(color: Colors.black)),
                        TextSpan(text: ' Sunday,5 May.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        TextSpan(text: ' Order within ',style: TextStyle(color: Colors.black)),
                        TextSpan(text: ' 47 mins. ',style: TextStyle(color: Colors.green)),
                        TextSpan(text: ' Details',style: TextStyle(color: Colors.blue)),
                      ]
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("In Stock",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0,2),

                        )
                      ],
                    ),
                    child:   DropdownButton<String>(
                        value: dropdownValue,
                        elevation: 16,
                        underline: Container(
                          height: 2,
                        ),
                        onChanged: (String? value) {

                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: items.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(value),
                                )),
                          );
                        }).toList()
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    height: 50,
                    width: 390,

                    child: ElevatedButton(onPressed: (){},
                      child: Text("Add to Cart",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),


                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 50,
                    width: 390,

                    child: ElevatedButton(onPressed: (){},
                      child: Text("Buy Now",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),),
                ),],

            ),
          ),

        ),),
    );
  }
}

