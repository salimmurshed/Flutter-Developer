import 'package:flutter/material.dart';
import 'package:fordemo/APi/api.dart';
import 'package:fordemo/APi/modal.dart';

import 'bottom.dart';

List<Quotes_model> quot = new List<Quotes_model>();

class Home extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<Home> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getQuot().then((gettingFromApi) {
      setState(() {
        quot = gettingFromApi;
        // _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quota'),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: quot.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            quot[index].text == null
                                ? Container()
                                : Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      quot[index].text,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                            quot[index].author == null
                                ? Container()
                                : Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      quot[index].author,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    );
                  })),
        ),
      ),
    );
  }
}
