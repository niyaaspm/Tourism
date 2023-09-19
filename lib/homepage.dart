import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tourist Places"),
        backgroundColor: const Color.fromARGB(255, 50, 240, 57),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                        color: const Color.fromARGB(255, 60, 244, 54))),
                height: 50,
                child: TextFormField(
                    decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Search for Places",
                  prefixIcon: Icon(Icons.search),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(children: [
                          Image.asset('images/wynd.jpeg'),
                          Positioned(
                            bottom: 110,
                            left: 10,
                            child: Container(
                              color: Colors.blue,
                            ),
                          )
                        ]),
                      ),
                    );
                  },
                  itemCount: 6,
                ),
              ),
            ),
            Text("Popular Places", style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 310,
                child: Image.asset(
                  'images/forest.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 310,
                child: Image.asset(
                  'images/lake.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
