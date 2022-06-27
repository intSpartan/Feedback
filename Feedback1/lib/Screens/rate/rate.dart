
import 'package:feedback1/Screens/rate/components/app_header.dart';
import 'package:feedback1/constraints.dart';
import 'package:feedback1/proportionate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'components/custom_app_bar.dart';

class RateScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),
            Positioned(
              top: -600,
                left: -187,
                child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                      "assets/images/img.png"),
                )

            ),
             SafeArea(
                child: Container(
                  padding: EdgeInsets.all(kDefaultPadding + 2),
                  child: Column(
                    children: [
                      CustomAppBar(),

                      SizedBox(height: kDefaultPadding + 2),

                      Image.asset(
                        "assets/images/dp.png",
                        width: getScreenProportionWidth(166, size),
                      ),

                      SizedBox(height: kDefaultPadding + 2),

                      const Text(
                        "Username ",
                        style: TextStyle(
                          color: kTextLightColor,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        'Spartan',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: kDefaultPadding + 2),

                      const Divider(
                        color: kTextLightColor,
                      ),

                      const SizedBox(height: kDefaultPadding + 2),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: const [
                          RideInfo(title: 'Time', value: '1000 min'),
                          RideInfo(title: 'Calories', value: '10000'),
                          RideInfo(title: 'Distance', value: '150 km'),
                        ],
                      ),

                      const SizedBox(height: kDefaultPadding + 2),

                      const Divider(
                        color: kTextLightColor,
                      ),

                      const Text(
                        "How is your experience of our app ",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       const SizedBox(height: kDefaultPadding + 2),

                      SmoothStarRating(
                        size: 45,
                        onRated: (v){},
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: kDefaultPadding,
                        ),
                      const SizedBox(height: kDefaultPadding + 2),

                      Container(
                        padding: EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              offset: const Offset(0.0 ,15.0 ),
                                color : kTextColor.withAlpha(20),
                            )
                          ]
                        ),
                        child: const TextField(
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Additional Comments',
                            hintStyle: TextStyle(
                              color: kTextLightColor,
                            ),
                          ),
                        )
                      ),
                      const SizedBox(height: kDefaultPadding + 2),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          // const Text(
                          //   'Submit',
                          //   style: TextStyle(
                          //     color: kPrimaryColor,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 18,
                          //
                          //   ),
                          // ),
                           ElevatedButton.icon(
                               onPressed: (){},
                               icon: Icon(Icons.arrow_forward),
                               label: const Text(
                                   '',
                               style: TextStyle(
                                 color: Colors.green,
                               ),),

                              )
                        ],
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

}

class RideInfo extends StatelessWidget{


  const RideInfo({Key? key, required this.title, required this.value}) : super(key: key);
  final String title , value;
  @override
  Widget build(BuildContext context) {
     return  RichText(
       text:  TextSpan(
           children: [
             TextSpan(
               text : title + '\n',
               style: TextStyle(
                 color: kTextLightColor,
                 fontSize: 14,
               ),
             ),
             TextSpan(
                 text : value,
                 style: TextStyle(
                   color: kTextColor,
                   fontWeight: FontWeight.bold,
                   fontSize: 18,
                 )
             ),
           ]
       ),
     );
  }

}

