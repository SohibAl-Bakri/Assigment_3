import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assigmnet 3'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.cyan[300],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'http://s3.amazonaws.com/mbc_actionha/uploads/20706/original.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.lightBlueAccent[100]),
                      overlayColor: MaterialStateProperty.all(Colors.blue),
                      elevation: MaterialStateProperty.all(10),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.navigate_before,
                          color: Colors.black87,
                        ),
                        Text(
                          'Previous',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.lightBlueAccent[400]),
                      overlayColor: MaterialStateProperty.all(Colors.blue[300]),
                      elevation: MaterialStateProperty.all(10),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(color: Colors.black87),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: null,
                child: Text('Show more'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
