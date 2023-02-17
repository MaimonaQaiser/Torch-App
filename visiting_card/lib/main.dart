import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(57, 119, 140, 1),
          title: Text('Digital Contact Card'
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 170,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/download.jpg'),
                      fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.modulate,)

                  ),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.jpg'),
                      radius: 60.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children:[
                        SizedBox(height: 55,),
                        Text(
                          'MF Technology',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.sacramento(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text('Software Company',
                          style: GoogleFonts.bahiana(
                            letterSpacing:1.5 ,
                          ),
                        ),
                        // SizedBox(
                        //   height: 100.0,
                        //   width: 10.0,
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Text('Contact Us',
                textAlign: TextAlign.justify,
                style: GoogleFonts.sacramento(fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),),
              // SizedBox(
              //   height: 75.0,
              //   width: 10.0,
              // ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  //set border radius more than 50% of height and width to make circle
                ),
                color: Color.fromRGBO(57, 119, 140, 1),
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone,
                        color: Colors.black,),
                      SizedBox(width: 30.0,),
                      Text('+923088373843',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal,color: Colors.black),),
                    ],
                  ),),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  //set border radius more than 50% of height and width to make circle
                ),
                color: Color.fromRGBO(57, 119, 140, 1),
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.email,
                        color: Colors.black,),
                      SizedBox(width: 30.0,),
                      Text('mftech@gmail.com',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal,color: Colors.black),),
                    ],
                  ),),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  //set border radius more than 50% of height and width to make circle
                ),
                color: Color.fromRGBO(57, 119, 140, 1),
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.message,
                        color: Colors.black,),
                      SizedBox(width: 30.0,),
                      Text('+923088373843',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal,color: Colors.black),),
                    ],
                  ),),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  //set border radius more than 50% of height and width to make circle
                ),
                color: Color.fromRGBO(57, 119, 140, 1),
                margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Icon(Icons.fax,
                        color: Colors.black,),
                      SizedBox(width: 30.0,),
                      Text('123-456-7890',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal,color: Colors.black),),
                    ],
                  ),),
              )
            ],
          ),
        ),
      ),
    ),
  );
}