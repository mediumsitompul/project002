import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Center(child: Text('PROJECT002')),),
      body: MyProject002(),
      ),
    );
  }
}




class MyProject002 extends StatefulWidget {
  MyProject002({Key? key}) : super(key: key);

  @override
  State<MyProject002> createState() => _MyProject002State();
}

class _MyProject002State extends State<MyProject002> {
  bool _isObscure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image(image: AssetImage('assets/images/medium.jpg'),
          height: 100,
          width: 100,
          ),

          Center(child: Text('Sign-In')),

          Container(
            padding: const EdgeInsets.all(8),
            child: const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username'

              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(8),
            child: TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _isObscure= !_isObscure;
                  });
                },
                icon: Icon(
                  _isObscure==false
                  ?Icons.visibility
                  :Icons.visibility_off
                ))
              ),
            ),
          ),


          ElevatedButton(onPressed: (){}, child: Text('LOGIN'))

        ],
      ),
    );
  }
}
