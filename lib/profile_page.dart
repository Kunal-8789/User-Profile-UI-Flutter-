import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profiletask/style_guide/text.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'commons/myInfo.dart';
import 'commons/opaque_image.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Stack(
              children: <Widget>[
                OpaqueImage(
                  imageUrl: "images/profile.jpg",
                ),
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child:Text(
                              "My Profile",
                              textAlign: TextAlign.left,
                              style: headingTextStyle,
                            ),
                          ),
                         MyInfo()
                        ],
                      ),
                    ),
                ),

              ],

            //   decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image:AssetImage('images/profile.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            ),
          ),
        FractionallySizedBox(
          alignment: Alignment.bottomCenter,
          heightFactor: 0.0,
              child: Container(
                color:Colors.transparent,
              ),
        ),

             ///Sliding Panel
          SlidingUpPanel(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
            ),
            minHeight: MediaQuery.of(context).size.height*0.35,
            maxHeight: MediaQuery.of(context).size.height*0.85,
            body: Container(
                color:Colors.transparent,
            ),
            panelBuilder: (ScrollController controller) => _panelBody(controller),
          ),
        ],
      ),
    );
  }
  ///Panel Body
  SingleChildScrollView _panelBody(ScrollController controller) {
    double hPadding=40;
    return SingleChildScrollView(
              controller: controller,
              physics: ClampingScrollPhysics(),
              child:Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: hPadding),
                    height: MediaQuery.of(context).size.height*0.80,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _callMail(),
                        SizedBox( width: 40,),
                        SizedBox( width: 40,),
                        SizedBox( width: 40,),
                        _numberMail(),
                        _actionSection(),
                        SizedBox( width: 40,),
                        SizedBox( width: 40,),
                        SizedBox( width: 40,),
                        _about(),
                        SizedBox( width: 40,),
                        SizedBox( width: 40,),
                        SizedBox( width: 40,),
                        _socialHandles(),
                      ],
                    ),
                  )

                ],
              ),
            );
  }







  Row _callMail() {
    return Row(
        mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[

        Expanded(
          // child: ElevatedButton(onPressed: () => print("Call"),
          //   style: ElevatedButton.styleFrom(
          //     shape: CircleBorder(),
          //     shadowColor: Colors.black,
          //     elevation: 15,
          //   ),
          child:Container(
              height: 100,
              width: 100,
            decoration: BoxDecoration(
              color: Colors.white30,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0,4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5.0,-5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),

              ],
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Colors.grey[200],
              //     Colors.grey[300],
              //     Colors.grey[400],
              //     Colors.grey[500],
              //   ],
              //   stops: [
              //     0.1,
              //     0.3,
              //     0.8,
              //     0.9,
              //   ],
              // ),


            ),
            child: IconButton(
              onPressed: () {},
              splashColor: Colors.cyan,
              icon: Icon(
                Icons.phone,
              ),
              // icon: FaIcon(FontAwesomeIcons.mailchimp),
               iconSize: 50.0,
            ),
          ),
        ),

         Expanded(
           // child: ElevatedButton(onPressed: () => print("Call"),
           //   style: ElevatedButton.styleFrom(
           //     shape: CircleBorder(),
           //     shadowColor: Colors.black,
           //     elevation: 15,
           //   ),
           child:Container(
             height: 100,
             width: 100,
             decoration: BoxDecoration(
               color: Colors.white30,
               shape: BoxShape.circle,
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey[600],
                   offset: Offset(4.0,4.0),
                   blurRadius: 15.0,
                   spreadRadius: 1.0,
                 ),
                 BoxShadow(
                   color: Colors.white,
                   offset: Offset(-5.0,-5.0),
                   blurRadius: 15.0,
                   spreadRadius: 1.0,
                 ),

               ],
               // gradient: LinearGradient(
               //   begin: Alignment.topLeft,
               //   end: Alignment.bottomRight,
               //   colors: [
               //     Colors.grey[200],
               //     Colors.grey[300],
               //     Colors.grey[400],
               //     Colors.grey[500],
               //   ],
               //   stops: [
               //     0.1,
               //     0.3,
               //     0.8,
               //     0.9,
               //   ],
               // ),


             ),
             child: IconButton(
               onPressed: () {},
               splashColor: Colors.cyan,
               icon: Icon(
                 Icons.mail,
               ),
               iconSize: 50.0,
             ),
           ),
         ),
       ],
    );
  }

  Row _numberMail() {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () => print("Contact Details"),
            // style: OutlinedButton.styleFrom(
            //
            //   backgroundColor: Colors.white,
            //   shadowColor: Colors.red,
            //   elevation: 5,
            // ),

            // child: Image.asset(
            //   "images/profile.jpg",
            // ),
            child: Text(
              'Call',
              style: TextStyle(
                fontFamily: 'NimbusSanL',
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),

          ),
        ),
        SizedBox( width: 30,),

        Expanded(
          child: TextButton(
            onPressed: () => print("Contact Details"),
            // style: OutlinedButton.styleFrom(
            //
            //   backgroundColor: Colors.white,
            //   shadowColor: Colors.red,
            //
            // ),

            // child: Image.asset(
            //   "images/profile.jpg",
            // ),
            child: Text(
              'Mail',
              style: TextStyle(
                fontFamily: 'NimbusSanL',
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),

          ),
        ),

      ],
    );
  }

  Row _actionSection() {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: OutlinedButton(
            onPressed: () => print("View profile tapped"),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.white,
                shadowColor: Colors.red,
                elevation: 5,
                side: BorderSide(color: Colors.blue),
              ),

                // child: Image.asset(
                //   "images/profile.jpg",
                // ),
            child: Text(
              'View Profile',
              style: TextStyle(
                fontFamily: 'NimbusSanL',
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
               ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
              child: TextButton(
                  onPressed: () => print("Message tapped"),

                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shadowColor: Colors.red,
                    elevation: 5,
                    // primary: Colors.blue,
                    // onSurface: Colors.white,
                    shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                child: Text(
                  "MESSAGE",
                  style: TextStyle(
                    fontFamily: 'NimbusSanL',
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                  ),

        ),
        ],
    );
  }
  Row _about() {
    return Row(
      mainAxisAlignment:MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child:Container(
            height: 190,
            decoration: BoxDecoration(
            color: Colors.white30,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0,4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-6.0,-5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),

              ],
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Colors.grey[200],
              //     Colors.grey[300],
              //     Colors.grey[400],
              //     Colors.grey[500],
              //   ],
              //   stops: [
              //     0.1,
              //     0.3,
              //     0.8,
              //     0.9,
              //   ],
              // ),


            ),
              padding: EdgeInsets.all(16.0),
              child:Text(
                'Hi! I am a first year undergraduate student of IIIT Allahabad.I am passionate towards Android Development.My hobbies include beatboxing,dancing and playing badminton. ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight:FontWeight.w700,
                ),
              ) ,


        ),),
      ],
    );
  }

  Row _socialHandles() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          // child: ElevatedButton(onPressed: () => print("Call"),
          //   style: ElevatedButton.styleFrom(
          //     shape: CircleBorder(),
          //     shadowColor: Colors.black,
          //     elevation: 15,
          //   ),
          child:Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white30,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0,4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5.0,-5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),

              ],
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Colors.grey[200],
              //     Colors.grey[300],
              //     Colors.grey[400],
              //     Colors.grey[500],
              //   ],
              //   stops: [
              //     0.1,
              //     0.3,
              //     0.8,
              //     0.9,
              //   ],
              // ),


            ),
              child: IconButton(
                onPressed: () {},
                iconSize: 60.0,
                splashColor: Colors.cyan,
                    icon: FaIcon(FontAwesomeIcons.facebookF),
              ),
              // icon: FaIcon(FontAwesomeIcons.mailchimp),

            ),
          ),
        Expanded(
          // child: ElevatedButton(onPressed: () => print("Call"),
          //   style: ElevatedButton.styleFrom(
          //     shape: CircleBorder(),
          //     shadowColor: Colors.black,
          //     elevation: 15,
          //   ),
          child:Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white30,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600],
                    offset: Offset(4.0,4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5.0,-5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),

                ],
                // gradient: LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Colors.grey[200],
                //     Colors.grey[300],
                //     Colors.grey[400],
                //     Colors.grey[500],
                //   ],
                //   stops: [
                //     0.1,
                //     0.3,
                //     0.8,
                //     0.9,
                //   ],
                // ),


              ),
            child: IconButton(
              onPressed: () {},
              iconSize: 60.0,
              splashColor: Colors.cyan,
              icon: FaIcon(FontAwesomeIcons.github),
            )

          ),
        ),
        Expanded(
          // child: ElevatedButton(onPressed: () => print("Call"),
          //   style: ElevatedButton.styleFrom(
          //     shape: CircleBorder(),
          //     shadowColor: Colors.black,
          //     elevation: 15,
          //   ),
          child:Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white30,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0,4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5.0,-5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),

              ],
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [
              //     Colors.grey[200],
              //     Colors.grey[300],
              //     Colors.grey[400],
              //     Colors.grey[500],
              //   ],
              //   stops: [
              //     0.1,
              //     0.3,
              //     0.8,
              //     0.9,
              //   ],
              // ),


            ),
            child: IconButton(
              onPressed: () {},
              iconSize: 60.0,
              splashColor: Colors.cyan,
              icon: FaIcon(FontAwesomeIcons.instagram),
            ),
            // icon: FaIcon(FontAwesomeIcons.mailchimp),

          ),
        ),
      ],
    );
  }
}
