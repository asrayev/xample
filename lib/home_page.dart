import 'package:cubit_example/repo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),

          TextButton(onPressed: ((){
            SpeechToTextRepository.startListening();

          }), child: Text("xasdfaf"))
        ],
      ),
    );
  }
}
