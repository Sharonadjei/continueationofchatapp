import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Chatapp(),
    );
  }
}

class Chatapp extends StatelessWidget {
  const Chatapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("THE APP I UNDERSTAND"),
          actions: const [Icon(Icons.search), Icon(Icons.more_horiz_rounded)],
        ),
        body: Column(
          children: const [
            ChatWidget(
              name: "sharon",
              message: "sharon is here",
              time: "11:00",
              image: "https://images.unsplash.com/photo-1638307430738-ea5fe2c38c6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            ),
             ChatWidget(
               name:"akosua",
             message: "am back from school",
              time: "today",
              image:"https://images.unsplash.com/photo-1638340699396-053c53582284?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80",),
             ChatWidget(name: "Maame Ekua",message: "i will come to ur shop today ok",time: "yesterday",image: "https://images.unsplash.com/photo-1633114072859-7e8171f1bc95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",),
            // ChatWidget()
          ],
        )
        // const Center(
        //  child: CircleAvatar(
        //    radius: 100,
        //    backgroundColor: Colors.amber,
        //    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1638210390539-b66b44bac0f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),) ,
        //   Text(
        //     "hello i am the a body of the app" ,
        //  style: TextStyle(
        //    fontSize: 30,
        //    color: Colors.amber ),
        //    )
        //  ),

        );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key,
    required this.name,
    required this.message,
    required this.time, required this.image,
  }) : super(key: key);
  final String name;
  final String message;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        color: Colors.deepOrange,
        child: ListTile(
          leading:  CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 30,
          ),
          title: Text(name),
          subtitle: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(Icons.done_all),
              // ignore: prefer_const_constructors
              Text(message),
            ],
          ),
          trailing: Text(time),
        )
        // Text("hello i am a card"),
        );
  }
}
