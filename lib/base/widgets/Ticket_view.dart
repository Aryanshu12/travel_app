import 'package:flutter/material.dart';
import 'package:travel_app/base/resource/style/app_styles.dart';
import 'package:travel_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:travel_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
 TicketView({super.key});

  @override
  Widget build(BuildContext context) {
   final size= MediaQuery.of(context).size;
    return SizedBox(
        width:size.width*0.85,
        height:179,
        child: Container(
          margin: EdgeInsets.only(right:16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
               // color: Colors.red,
               // ignore: sort_child_properties_last
               child: Column(
                children: [
              // show dep. to arr. with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NYC',style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
                        ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 6),
                          ),
                          Transform.rotate(angle: 1.5,
                          child: Center(child: Icon(Icons.local_airport_rounded,color: Colors.white,size: 24,))),
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        'LDN',style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
                        ),
                    ],
                  ),
              //show dep. to arr. with time 
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New-York',style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                        ),
                      Expanded(child: Container()),
                      Text(
                        '8H 30M',style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                        ),
                      Expanded(child: Container()),
                      Text(
                        'London',style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                        ),
                    ],
                  )
                ]
               ),
                decoration: BoxDecoration(
                  color:AppStyles.Ticketblue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
                            ),
              ),
              Container(
                padding: EdgeInsets.all(9),
               // color: Colors.red,
               // ignore: sort_child_properties_last
               child: Column(
                children: [
              // show dep. to arr. with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NYC',style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
                        ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 6),
                          ),
                          Transform.rotate(angle: 1.5,
                          child: Center(child: Icon(Icons.local_airport_rounded,color: Colors.white,size: 24,))),
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        'LDN',style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
                        ),
                    ],
                  ),
              //show dep. to arr. with time 
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New-York',style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                        ),
                      Expanded(child: Container()),
                      Text(
                        '8H 30M',style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                        ),
                      Expanded(child: Container()),
                      Text(
                        'London',style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                        ),
                    ],
                  )
                ]
               ),
                decoration: BoxDecoration(
                  color:Colors.orangeAccent,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
                            ),
              )
            ],
          ),
        ),
       
    );
  }
}