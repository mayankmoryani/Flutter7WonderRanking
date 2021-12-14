import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wondersofworld/services/search.dart';
class Firstscreen extends StatefulWidget {

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  //Creating list for images, content, and title
  List<String> images=['TajMahal.jpg','WallofChina.jpg','MachuPichu.jpg','thecolosseum.jpg',
    'The_Redeemer_Statue.jpg','PETRA.jpg','Chichen.jpg'];//list of images

  List<String> content=["One of the seven wonders of the world, Taj Mahal is located on the banks of River Yamuna in"
      " Agra. It was built by the Mughal Emperor Shah Jahan as a memorial for his third wife, Mumtaz Mahal."
      " It also houses the tomb of Shah Jahan himself. Constructed entirely out of white marble in the "
      "17th century, Taj Mahal is one of the most beautiful monuments in the world. Every year visitors numbering"
      " more than the entire population of Agra pass through the magnificent gates to catch a glimpse of this "
      "breathtaking monument!",
    ' The Great Wall of China doesn\'t really need much of an introduction. Though the entire length of the great'
        ' wall is not easy to discern, the beginning of it\'s construction dates back to 5th - 8th century BCE.'
        'Most of the wall that stands today, and is widely regarded as the \'great wall\', was built during the '
        'reign of the Qing dynasty to defend the region against Mongol insurgents. The wall in it\'s entirety is '
        '21196 km long. The Qing wall in itself stands at 8850 km, of which 6259 kilometres is actual wall and '
        'the rest is trenches and natural defences. This entire length is also complete with more than 25000 '
        'watch towers. Though a substantial part of the wall is today in ruins, around 30% of it, parts of the '
        'wall around Beijing are kept in top condition today, mainly because they are a huge tourist attraction. '
        'Areas near Beijing which see the most tourists are Jinshanling, a famous hiking track and Mutianyu, '
        'the best kept section of the Wall. There are various tours of the great wall, and many sections you '
        'can visit depending on your preferences. And if you went to China and didn\'t see the Great Wall, '
        'did you really ever go to China?',
    'Located in Eastern Cordillera, this 15th-century citadel of the Incas was formed atop fault lines by'
        ' earthquakes and is brilliant for its walls of dry stone fused with boulders without mortar. '
        'The exceptional architecture with astronomical significance displays how advanced the Incas were '
        'for their era and that is one reason why it came to be one of the seven wonders of the world. '
        'Great mystery revolves around Machu Pichu as its former use is unknown. You can climb the peaks for '
        'free to enjoy a panoramic view of the ruins and Urubamba River',
    'This 2000-year-old oval-shaped amphitheatre in the heart of Rome city is an iconic retention of Imperial '
        'Rome and its unique culture. Also known as Flavian Theatre, Colosseum has seen innumerable gladiator '
        'contests, mock sea battles, animal hunts and executions since it was built by Emperor Vespasian. '
        'Even though only a section remains today, this stone-built venue once had the capacity of over 50,000 '
        'and attracts history buffs and tourists alike.',
    'Rio de Janeiro’s most famous Art Deco statue of Jesus Christ stands 38 meters tall as a colossal '
        'protector of the people and was built to commemorate the anniversary century of Brazil’s independence. '
        'It is listed as one of the seven wonders of the world for being a symbol of Christianity and showcases'
        ' a detailed soapstone build. You can see the statue by train or a more challenging hike up the '
        'surrounding 700-foot-tall peak.',
    'The majestic red stone architecture and a whole city carved out of rock cuts earns Petra the name of Rose '
        'City and a place amongst the 7 wonders of the world. Known for stunning, intricate architecture and '
        'modern water channel systems, Petra houses sightseeing spots like the lengthy Siq, the Temple of '
        'Winged Lions and the Treasury. The city attracts millions of tourists from across the world for being '
        'one of the grandest man-made architectural marvels.',
    'Chichen Itza, meaning “at Itza’s well’s mouth”, is the remainder of Terminal Classic, pre-Columbian period '
        'when it was built by the Mayan and Yucatan civilizations. The highlight of this archaeological site is '
        'Kukulcan Pyramid with larger pyramids built atop smaller ones. Listed as one of the seven wonders of '
        'the world, the monument has one of the most elaborate excavations of the Jaguar throne within. Temple of '
        'Warriors, El Castillo and Great Ball Court are other delightful tourist spots at Chichen Itza.'];//list of content

  List<String> titles=['Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', ];//list of titles

  int currentindex = 0;
  Map<String,dynamic> send={};
  @override
  Widget build(BuildContext context) {
    send = {'images' : images, 'content' : content, 'titles' : titles};
    return Scaffold(
      appBar: AppBar(
        title: Text(' New 7 Wonders of the world Ranking | 2021'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(

              icon: Icon(Icons.search),
              onPressed: (){
                showSearch(context: context, delegate: DataSearch(emp:send));
              },
    ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        type:BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,

              ),
            backgroundColor: Colors.white,
            label:''

          ),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.compass,
              ),
            backgroundColor: Colors.white,
              label:''
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.graduationCap,
            ),
            backgroundColor: Colors.white,
              label:''
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bell,
            ),
            backgroundColor: Colors.white,
              label:''
          ),
        ],
        onTap: (index){
          setState(() {
            currentindex = index;
          });
        },
      ),

      body: Container(
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index) => Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 20.0,
                  )
                ]
              ),
              child: Card(
                child: InkWell(
                  splashColor: Colors.blue,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: AssetImage('assets/'+images[index%7]),//Modulus operator to have 7 images

                        ),
                      ),
                      SizedBox(height: 10.0,),

                      Text(titles[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),),

                      SizedBox(height: 10.0,),
                    ],
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/secondscreen', arguments: {
                      'title': titles[index],
                      'image': images[index%7],
                      'content': content[index%7]
                    });
                  },
                ),
              ),
            ),

            staggeredTileBuilder: (int index) =>
            StaggeredTile.fit(2),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
        ),

      ),
    );
  }
}
