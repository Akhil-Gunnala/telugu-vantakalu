import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({
    required this.list,
    required this.index,
  });

  final List list;
  final int index;

  @override
  _DetailsScreenState createState() => _DetailsScreenState(index, list);
}

class _DetailsScreenState extends State<DetailsScreen> {
  _DetailsScreenState(this.index, this.list);

  int index;
  List list;
  List l1 = [];

  void initState() {
    l1 = list[index];
  }

  void call() {
    setState(() {
      l1 = list[index];
    });
  }

  _onShareData() async {
    List l2 = [
      '''      
     ${l1[0]}  
     \n   కావాల్సిన పదార్ధాలు \n\n
     ${l1[2]}
     \n తయారు చేయు విధానం \n\n
     
     Read more....
     https://www.facebook.com/
         '''
    ];
    await Share.share(l2[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          l1[0],
          style: GoogleFonts.pacifico(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () => _onShareData(),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          //margin: EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  //decrement button
                  onPressed: () {
                    if (index > 1) {
                      setState(() {
                        index--;
                        call();
                      });
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.chevron_left_outlined,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    width: 200,
                    // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2),
                        image: DecorationImage(
                          image: AssetImage(l1[1]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                TextButton(
                  //increment button
                  onPressed: () {
                    if (index < list.length - 1) {
                      setState(() {
                        index++;
                        call();
                      });
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.chevron_right_outlined,
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 5),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Text(
                          "కావాల్సిన పదార్ధాలు",
                          style: GoogleFonts.pacifico(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          l1[2],
                          style: GoogleFonts.pacifico(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        "తయారు చేయు విధానం",
                        style: GoogleFonts.pacifico(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          l1[3],
                          style: GoogleFonts.pacifico(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ])),
          ]),
        ),
      ),
    );
  }
}
