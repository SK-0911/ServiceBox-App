import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:ServiceBox/const/CustomColors.dart';
import 'package:ServiceBox/utils/landscape_main.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'const/imagename.dart';

class HostelInfo extends StatefulWidget {
  const HostelInfo({Key? key}) : super(key: key);

  @override
  State<HostelInfo> createState() => _HostelInfoState();
}

class _HostelInfoState extends State<HostelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.darkBlueTheme,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
              gradient: AppColors.logoGradient,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Hostel Name",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: LandscapeView(
        middleRatio: 2,
        middleWidget: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Hostel Pics
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: AnotherCarousel(
                images: [
                  Image.asset(
                    washAndIron,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    chemicalWash,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    dryClean,
                    fit: BoxFit.cover,
                  ),
                ],
                dotSize: 4.0,
                dotIncreaseSize: 2.5,
                dotSpacing: 15.0,
                boxFit: BoxFit.scaleDown,
                autoplay: true,
                animationDuration: Duration(seconds: 2),
              ),
            ),

            const SizedBox(height: 15,),

            // Location
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar(
                          allowHalfRating: false,
                          itemSize: 25,
                          itemCount: 5,
                          initialRating: 4,
                          ratingWidget: RatingWidget(
                            full: Icon(Icons.star, color: Colors.yellow[700],),
                            empty: Icon(Icons.star_border_outlined, color: Colors.yellow[700]),
                              half: Icon(Icons.star_half, color: Colors.yellow[700])
                          ), onRatingUpdate: (double value) {}
,                  ),

                      Text(
                        "₹ 4,000",
                        style: TextStyle(
                            color: AppColors.darkBlueTheme,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, size: 20,),
                          const SizedBox(width: 5),
                          Text(
                              "Kharghar, Navi Mumbai",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                          ),
                        ],
                      ),

                      Text(
                        "/month",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w300
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),


            // Features title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Features",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                caspule("2 Bedroom", Icons.bed,AppColors.darkBlueTheme),
                caspule("Wifi", Icons.wifi,AppColors.home3),
                caspule("1 Bathroom",Icons.bathtub_outlined,AppColors.home1st)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                caspule("Contact No",Icons.call,AppColors.pinkcard),
                caspule("AC Rooms",Icons.ac_unit,AppColors.home2st),
              ],
            ),

            SizedBox(height: 15),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),

            // Property Details title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Property Details",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffE0EC5656),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.bed,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Name: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffE56D4C41),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.summarize,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Overview: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.lightblue,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Type: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.lightGreenTheme,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.single_bed,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "For: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffED1C24), shape: BoxShape.circle),
                          child: Icon(
                            Icons.wifi,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Amenities: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Location",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xff5929E3), shape: BoxShape.circle),
                          child: Icon(
                            Icons.place_sharp,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Near By Places: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.lightblue,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Near By Colleges: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Things You Should Know",
                style: TextStyle(
                  color: AppColors.darkBlueTheme,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xff2FA73B), shape: BoxShape.circle),
                          child: Icon(
                            Icons.rule,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Check In Rules: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color(0xffC48E6A), shape: BoxShape.circle),
                          child: Icon(
                            Icons.assignment,
                            color: Colors.white,
                            size: 20,
                          )),
                      const SizedBox(width: 10),
                      Text(
                        "Check In Documents: ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SlideAction(
                    onSubmit: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Center(
                            child: Text(
                              'Booking Confirmed!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.lightGreenTheme,
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                  decoration: BoxDecoration(
                                    gradient: AppColors.logoGradient,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: Text(
                                      'Okay',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                    ),
                    outerColor: AppColors.newBlueTheme,
                    sliderRotate: false,
                    elevation: 4,
                    height: 60,
                    sliderButtonIconPadding: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: AppColors.logoGradient,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Slide to Book",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget caspule(String Title, IconData icon,Color color) {
    return Container(

      width: MediaQuery.of(context).size.width / 3.5,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color,
          // shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: Colors.white, size: 15,),
          SizedBox(width: 2,),
          Text(Title,style: TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
