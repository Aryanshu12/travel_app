import 'package:flutter/material.dart';
import 'package:travel_app/base/resource/style/app_styles.dart';
import 'package:travel_app/base/widgets/app_coloumn_text_layout.dart';
import 'package:travel_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:travel_app/base/widgets/big_circle_dot.dart';
import 'package:travel_app/base/widgets/big_dot.dart';
import 'package:travel_app/base/widgets/text_style_fourth.dart';
import 'package:travel_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
 TicketView({super.key,required this.ticket});

  @override
  Widget build(BuildContext context) {
   final size= MediaQuery.of(context).size;
    return SizedBox(
        width:size.width*0.85,
        height:199,
        child: Container(
          margin: EdgeInsets.only(right:16),
          // ignore: sort_child_properties_last
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
                      TextStyleThird(text: ticket['from']['code']),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 6),
                          ),
                          Transform.rotate(angle: 1.575,
                          child: Center(child: Icon(Icons.local_airport_rounded,color: Colors.white,size: 24,))),
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket['to']['code']),
                    ],
                  ),
              //show dep. to arr. with time 
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket['from']['name'], Align: TextAlign.start,)
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time'], Align: TextAlign.center,),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 51.0),
                          child: TextStyleFourth(text: ticket['to']['name'],
                            Align: TextAlign.end,
                            
                          ),
                        )
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
                 color: AppStyles.TicketOrange,
                  child: Row(
                    children: [
                      BigCircleDot(isRight: false),
                      Expanded(child: Container(
                        child: AppLayoutbuilderWidget(randomDivider: 16, width: 6)
                      ),),
                      BigCircleDot(isRight: true),
                    ],
                  ),
              ),
              Container(
                padding: EdgeInsets.all(9),
               // color: Colors.red,
               // ignore: sort_child_properties_last
               child: Column(
                children: [
              // show dep. to arr. with date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColoumnTextLayout(Toptext: ticket['date'], Bottomtext: 'Date'),
                      AppColoumnTextLayout(Toptext: ticket['departure_time'], Bottomtext: 'Departure time'),
                      AppColoumnTextLayout(Toptext: ticket['number'].toString(), Bottomtext: 'Number'),
                    ],
                  ),
                ]
               ),
                decoration: BoxDecoration(
                  color:AppStyles.TicketOrange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
                            ),
              )
          ]),
          ),
    );
  }
}