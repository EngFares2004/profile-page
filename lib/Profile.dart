import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Details.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> items = [
    {
      'icon': Icons.cast_for_education,
      'text': "Student in Faculty of Computers \nand Information ,Mansoura University "

    },
    {
      'icon': Icons.cast_for_education,
      'text': "Student in Faculty of Computers \nand Information ,Luxor University "

    },
    {
      'icon': Icons.work_rounded,
      'text': "Software  Engineer at Google"

    },
    {
      'icon': Icons.location_on,
      'text': "From Mansoura ",
    },
    {
      'icon': Icons.home_rounded,
      'text': "Lives in Mit Ghamr  ",
    },
    {
      'icon': Icons.broken_image,
      'text': "17 MAY 2004",
    },
    {
      'icon': Icons.favorite,
      'text': "Single",
    },
    {
      'icon': Icons.phone,
      'text': "01026450812 "

    },

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('faresmohammed123', style:
        TextStyle(color: Colors.white
        , fontSize: 20.5,
        fontWeight: FontWeight.w900,
    ),
    ),

    leading: IconButton(
    icon: const Icon(Icons.arrow_back
    ,color: Colors.white,
    size: 32.0,),
    onPressed: () {

    Navigator.pop(context);
    },))   ,
          body:Column(
            mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Row(
            children: [
              Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                          Radius.circular(2000)),
                      boxShadow: [
                        BoxShadow(color: Colors.blue,
                            offset: Offset(6, 6),
                            spreadRadius: 2,
                            blurRadius: 20)
                      ]),
                  child: ClipOval(
                    child: Image.asset(
                        fit: BoxFit.cover, 'image/fares.jpg'),
                  )
              ),
              const Column(
                children: [
                  Text(" 6          900             50", style:
                  TextStyle(color: Colors.white
                    , fontSize: 20.5,
                    fontWeight: FontWeight.w900,)),
                  Text("   posts   followers   following", style:
                  TextStyle(color: Colors.white
                    , fontSize: 18.5,
                    fontWeight: FontWeight.w900,))
                ],)
            ],),

          const Text('   Fares Mohammed', style:
          TextStyle(color: Colors.white
            , fontSize: 22.5,
            fontWeight: FontWeight.w900,
          )),
          const Text("     Education", style:
          TextStyle(color: Colors.blueGrey
            , fontSize: 16.5,
            fontWeight: FontWeight.w400,)),
          const Text(
              "     Student in Faculty of Computers \n     and Information ,Mansoura University\n  ",
              style:
              TextStyle(color: Colors.white
                , fontSize: 16.5,
                fontWeight: FontWeight.w400,)),

          const ButtonClick(),

          const Divider(
            color: Colors.grey,
            thickness: 1.0,
            indent: 0.0,
            endIndent: 0.0,
          ),
          const Text("   About   Posts   Photos", style:
          TextStyle(color: Colors.white
            , fontSize: 18.5,
            fontWeight: FontWeight.w400,
          )),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
            indent: 0.0,
            endIndent: 0.0,
          ),
          const Text("   Details\n", style:
          TextStyle(color: Colors.white
            , fontSize: 18.5,
            fontWeight: FontWeight.w800,
          ),
          ),


          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                IconData iconData = items[index]['icon'];
                String text = items[index]['text'];
                return buildListTile(context, iconData, text);
              },
            ),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  items.add({
                    'icon': Icons.add,
                    'text': "New Item",
                  });
                });
              },
              child: const Text(
                "Add Item",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,


                ),
              ),
            ),
          ),
          const SocialMediaRow(),
        ])));
  }
  Widget buildListTile(BuildContext context, IconData iconData, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              icon: iconData,
              description: 'Detailed information about:\n $text',
            ),
          ),
        );
      },
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.blueAccent,
          size: 32.0,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w900,

          ),
        ),
      ),
    );
  }

}


class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            _launchURL('https://www.facebook.com/yourprofile');  // Replace with your URL
          },
          icon: const Icon(
            FontAwesomeIcons.facebook,
            color: Color(0xFF1877F2),
            size: 32.0,
          ),
        ),
        const SizedBox(width: 16.0),
        IconButton(
          onPressed: () {
            _launchURL('https://twitter.com');  // Replace with your URL
          },
          icon: const Icon(
            FontAwesomeIcons.twitter,
            color: Color(0xFF1DA1F2),
            size: 32.0,
          ),
        ),
        const SizedBox(width: 16.0),
        IconButton(
          onPressed: () {
            _launchURL('https://www.instagram.com/yourprofile ');
          },
          icon: const Icon(
            FontAwesomeIcons.instagram,
            color: Color(0xFFE1306C),
            size: 32.0,
          ),
        ),
        const SizedBox(width: 16.0),
        IconButton(
          onPressed: () {
            _launchURL('https://call.whatsapp.com/video/ike3lfYIvSg0nibqlStvN3');  // Replace with your WhatsApp number
          },
          icon: const Icon(
            FontAwesomeIcons.whatsapp,
            color: Color(0xFF25D366),
            size: 32.0,
          ),
        ),
      ],
    );
  }
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ButtonClick extends StatefulWidget {
  const ButtonClick({super.key});
  @override
  State<ButtonClick> createState() => _ButtonClickState();

}
class _ButtonClickState extends State<ButtonClick> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: (){},
            child: const Text('Edit profile',),),
          const SizedBox(height: 50,width: 12,),

          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share),
            label: const Text('Share profile'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            ),
          ),
          const SizedBox(height: 30,width: 12,),
          ElevatedButton.icon(
            onPressed: (

                ) {
            },
            label: const Text(''),
            icon: const Icon(Icons.more_horiz_rounded),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            ),
          )

        ],
      ),
    );
  }
}


