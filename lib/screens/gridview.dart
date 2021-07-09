import 'package:flutter/material.dart';
import 'package:telugu_vantakalu/constants.dart';
import 'package:telugu_vantakalu/list.dart';
import 'package:telugu_vantakalu/screens/listView.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);
  static const String id = 'Grid';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'తెలుగు వంటకాలు',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            Constant(
              image: 'images/soup.png',
              text: 'సూప్‌లు',
              onpressed: ListViewScreen(
                  listView: soups[0], name: 'సూప్‌లు', list: soups),
            ),
            Constant(
              image: 'images/tiffins.png',
              text: 'ఫలహరాలు',
              onpressed: ListViewScreen(
                list: tiffin,
                name: 'ఫలహరాలు',
                listView: tiffin[0],
              ),
            ),
            Constant(
              image: 'images/veg.png',
              text: 'శాఖహరం',
              onpressed: ListViewScreen(
                list: veg,
                name: 'శాఖహరం',
                listView: veg[0],
              ),
            ),
            Constant(
              image: 'images/nonveg.png',
              text: 'మాంసాహరం',
              onpressed: ListViewScreen(
                list: nonveg,
                name: 'మాంసాహరం',
                listView: nonveg[0],
              ),
            ),
            Constant(
              image: 'images/aaku.jpg',
              text: 'ఆకుకూరలు',
              onpressed: ListViewScreen(
                list: vegetable,
                name: 'ఆకుకూరలు',
                listView: vegetable[0],
              ),
            ),
            Constant(
              image: 'images/sambar.png',
              text: 'సాంబార్ వంటకాలు',
              onpressed: ListViewScreen(
                list: sambar,
                name: 'సాంబార్ వంటకాలు',
                listView: sambar[0],
              ),
            ),
            Constant(
              image: 'images/jonna.jpg',
              text: 'జొన్న వంటకాలు',
              onpressed: ListViewScreen(
                list: jonna,
                name: 'జొన్న వంటకాలు',
                listView: jonna[0],
              ),
            ),
            /*  Constant(
              image: 'images/bajji.png',
              text: 'చిరు వంటకాలు',
              onpressed: ListViewScreen(
                list: soups,
                name: 'చిరు వంటకాలు',
              ),
            ), */
            Constant(
              image: 'images/pindi.png',
              text: 'పిండి వంటకాలు',
              onpressed: ListViewScreen(
                list: pindi,
                name: 'పిండి వంటకాలు',
                listView: pindi[0],
              ),
            ),
            Constant(
              image: 'images/vegfry.png',
              text: 'బియ్యపు వంటకాలు',
              onpressed: ListViewScreen(
                list: biyyam,
                name: 'బియ్యపు వంటకాలు',
                listView: biyyam[0],
              ),
            ),
            Constant(
              image: 'images/chtny.png',
              text: 'పచ్చల్లు',
              onpressed: ListViewScreen(
                list: pickles,
                name: 'పచ్చల్లు',
                listView: pickles[0],
              ),
            ),
            /* Constant(
              image: 'images/pickel.png',
              text: 'ఊరగాయలు',
              onpressed: ListViewScreen(
                list: pickles,
                name: 'ఊరగాయలు',
              ),
            ),
              Constant(
              image: 'images/vadiyalu.png',
              text: 'వడియాలు',
              onpressed: ListViewScreen(
                list: vadiyalu,
                name: 'వడియాలు',
              ),
            ), */
            Constant(
              image: 'images/juice.png',
              text: 'పండ్లరసాలు',
              onpressed: ListViewScreen(
                list: juice,
                name: 'పండ్లరసాలు',
                listView: juice[0],
              ),
            ),
            Constant(
              image: 'images/coffie.png',
              text: 'టి మరియు కాఫిలు',
              onpressed: ListViewScreen(
                list: tea,
                name: 'టి మరియు కాఫిలు',
                listView: tea[0],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
