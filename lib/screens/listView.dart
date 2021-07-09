import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:telugu_vantakalu/screens/detailspage.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen(
      {required this.list, required this.name, required this.listView});

  final List list;
  final String name;
  final List listView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          name,
          style: GoogleFonts.pacifico(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listView.length,
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        15.0, // Move to right 10  horizontally
                        15.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    listView[index],
                    style: GoogleFonts.pacifico(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    index: index + 1,
                    list: list,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
