import 'package:flutter/material.dart';
import 'package:untitled/Profile.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: const Text('Fares Mohammed', style:
            TextStyle(color: Colors.white
              , fontSize: 22.5,
              fontWeight: FontWeight.w900,
            ),
            ),
          ),
          body:SingleChildScrollView(

         child:   Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

             Container(

                 width: 180,
                 height: 180,

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
                       ,
                       BoxShadow(color: Colors.red,
                           offset: Offset(-6, -6),
                           spreadRadius: 2,
                           blurRadius: 20)
                     ]),
                 child: ClipOval(
                   child: Image.asset(
                       fit: BoxFit.cover, 'image/fa.jpg'),
                 )
             ),

                const ButtonClick()
           ],
          )
    ) )
    );
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );},
            child: const Text('View profile',),),
          const SizedBox(height: 300,width: 300,),
          const SocialMediaRow()

        ],
      ),
    );
  }
}