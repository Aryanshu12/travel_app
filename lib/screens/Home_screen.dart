import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/base/media.dart';
import 'package:travel_app/base/resource/style/app_styles.dart';
import 'package:travel_app/base/resource/style/utils/all_json.dart';
import 'package:travel_app/base/widgets/Ticket_view.dart';
import 'package:travel_app/base/widgets/app_double_text.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body:ListView(
        children: [
          SizedBox(height: 40,),
          Container(
            //crossAxisAlignment: CrossAxisAlignment.start,
            padding: EdgeInsets.symmetric(horizontal: 20),
            //color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning',style: AppStyles.headlineStyle1
                        ),
                        SizedBox(height: 5),
                      Text('Book Tickets',style: AppStyles.headlineStyle2
                        )
                    ],
                   ),
                   Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image:AssetImage(AppMedia.logo))
                    ),
                   )
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                 // width: double.infinity,
                 // height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      border: Border.all(color: Colors.black12),
                      color: Color(0xFFF4F6FD),
                      borderRadius: BorderRadius.circular(10),
                     // image: DecorationImage(image:AssetImage(AppMedia.logo))
                    ),
                  child: Row(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                        Text('search'), 
                    ],
                  ),
                ),
               SizedBox(height: 40),
               AppDoubleText(bigText: 'Upcoming ticket', smallText: 'View all'),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((singleTicket)=> TicketView(ticket: singleTicket)
                    ).toList()
                  )
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}