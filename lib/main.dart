import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery Viewer',
      home: MyHomePage(title: 'GALLERY VIEWER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          widget.title,
          style: const TextStyle(letterSpacing: 5),
        ),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
              onTap: () {
                setState(() {
                  change = !change;
                });
              },
              child: const Icon(Icons.apps)),
        )],
      ),
      body: GridView.count(
        scrollDirection: change?Axis.vertical:Axis.horizontal,
        padding: const EdgeInsets.all(5),
        crossAxisCount: 1,
        mainAxisSpacing: 5,
        children: [
          Image.asset("images/i1.jpg",fit: BoxFit.cover),
          Image.asset("images/i2.jpeg",fit: BoxFit.cover),
          Image.asset("images/i3.Jpeg",fit: BoxFit.cover),
          Image.asset("images/i4.jpeg",fit: BoxFit.cover),
          Image.asset("images/i5.jpeg",fit: BoxFit.cover),
          Image.network("https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_1280.jpg",fit: BoxFit.cover,),
          Image.network("https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_1280.jpg",fit: BoxFit.cover,),
          Image.network("https://cdn.pixabay.com/photo/2018/08/21/23/29/forest-3622519_1280.jpg",fit: BoxFit.cover,),
          Image.network("https://cdn.pixabay.com/photo/2014/09/07/22/17/forest-438432_1280.jpg",fit: BoxFit.cover,),
          Image.network("https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742_1280.jpg",fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
