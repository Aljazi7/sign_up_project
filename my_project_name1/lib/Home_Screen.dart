import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(189, 37, 68, 38),
        centerTitle: true,
        title: Text(
          "اسْتَغْفِرُوا رَبَّكُمْ إِنَّهُ كَانَ غَفَّارًا",
          style: TextStyle(
              fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
     backgroundColor: const Color.fromARGB(255, 31, 55, 32),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                width: MediaQuery.of(context).size.width / 1.50,
                height: MediaQuery.of(context).size.height / 1.50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 9),
                          color: Colors.white.withOpacity(.5),
                          spreadRadius: 8,
                          blurRadius: 20,
                        ),
                      ]
                    ),
                    child: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Transform.translate(
                    offset: Offset(1, -100),
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                             spreadRadius: 5,
                              blurRadius: 5,
                              color: Colors.white.withOpacity(.5)),
                        ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => Counter(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                          ),
                          SizedBox(
                            height: 30,
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          ElevatedButton(
                            onPressed: () => reset(),
                            child: Icon(
                              Icons.wifi_protected_setup_sharp,
                              size: 33,
                              ),
                            style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.red, elevation: 20 ),
        
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
