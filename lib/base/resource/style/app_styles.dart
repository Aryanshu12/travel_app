import "package:flutter/material.dart";

// ignore: non_constant_identifier_names
Color Primary =  Color(0xFF687daf);
class AppStyles {
  static Color primaryColor=Primary; 
  static Color bgColor = Color(0xFFF3F5F7);
  static Color Textcolor = Color(0xFF3b3b3b);
  static Color Ticketblue = Color(0xFF526799);
  static Color TicketOrange = Color(0xFFf37b67);
  
  static TextStyle textStyle=TextStyle(
    fontSize: 16,
    color: Textcolor,
    fontWeight: FontWeight.w500
  );
 static TextStyle headlineStyle1=TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  //color: Textcolor,
  );
  static TextStyle headlineStyle2=TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.bold,
  color: Textcolor,
  );
  static TextStyle headlineStyle3=TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w500,
  //color: Textcolor,
  );
  static TextStyle headlineStyle4=TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  //color: Textcolor,
  );

}