import 'package:flutter/material.dart';
import 'package:telugu_vantakalu/screens/gridview.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: InkWell(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 5),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/wallPaper.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(150),
                      //color: Colors.white,
                    ),
                    //child: Image.asset("images/wallPaper.jpg"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ]),
                    child: Text(
                      "తెలుగు వంటకాలు",
                      style: GoogleFonts.pacifico(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () => Navigator.popAndPushNamed(context, Grid.id),
        ),
      ),
    );
  }
}
