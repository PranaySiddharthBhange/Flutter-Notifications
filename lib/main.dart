import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Overlay',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){

              showOverlayNotification((context) {
                return Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
                 ),
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: SafeArea(
                    child: ListTile(
                      leading: SizedBox.fromSize(
                          size: const Size(40, 40),
                          child: ClipOval(
                              child: Container(
                                color: Colors.black,
                                child: Image.network('src'),
                              ))),
                      title: const Text('AgroTech'),
                      subtitle: Text('Potassium needed !!'),
                      trailing: IconButton(
                          icon: const Icon(Icons.close_rounded),
                          onPressed: () {

                          }),
                    ),
                  ),
                );
              }, duration: Duration(milliseconds: 1500));
            },
          ),
        )
      ),
    );
  }
}
