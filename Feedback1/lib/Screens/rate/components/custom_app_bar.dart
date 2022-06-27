

import 'package:flutter/material.dart';

import '../../../constraints.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){},
            color: kPrimaryColor,
          ),

        ),

        SizedBox(width: kDefaultPadding),
        Text(
          'You are all fit!',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),
        )
      ],
    );
  }

}