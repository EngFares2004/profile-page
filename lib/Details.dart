import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  final IconData icon;
  final String description;

  const DetailPage({super.key, required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   Row(
          children: [
            Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                        Radius.circular(2000)),
                    boxShadow: [
                      BoxShadow(color: Colors.brown,
                          offset: Offset(6, 6),
                          spreadRadius: 2,
                          blurRadius: 20)
                    ]),
                child: ClipOval(
                  child: Image.asset(
                      fit: BoxFit.cover, 'image/fares.jpg'),
                )
            ),
            const Text(" Fares Mohammed", style:
                TextStyle(color: Colors.white
                  , fontSize: 20.5,
                  fontWeight: FontWeight.w900,)),
          ],),
         leading: IconButton(
    icon: const Icon(Icons.arrow_back
    ,color: Colors.white,
    size: 32.0,),
    onPressed: () {

    Navigator.pop(context);
    },),
         backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 100,
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
