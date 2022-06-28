import 'package:flutter/material.dart';
import 'package:codepur/utils/MyRouter.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
         children: [
           Image.asset("assets/images/login.png",
             height: 250,
             fit:BoxFit.cover,),
           SizedBox(
             height: 10.0,
           ),
           Text(
             'Welcome $name',
             style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(
             height: 10.0,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
             child: Column(
               children: [
                 TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter UserName',
                      labelText: 'Username'
                    ),
                   onChanged: (value) {
                     name = value;
                     setState(() {});
                   },
                 ),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                       hintText: 'Enter Password',
                       labelText: 'password'
                   ),
                 ),
                 SizedBox(
                   height: 20.0,
                 ),
              /*   ElevatedButton(
                     onPressed: (){
                      // print('Hi Abhishek');
                       Navigator.pushNamed(context, MyRouter.homeRoute);
                     },
                     child: Text('Login'),
                     style : TextButton.styleFrom(
                       backgroundColor: Colors.lightGreen,
                       primary: Colors.white,
                       minimumSize: Size(200.0, 40.0),
                     )
                 ),*/
                 InkWell(
                   onTap:() async  {
                     setState(() {
                       changeButton = true;
                     });
                     await Future.delayed(Duration(seconds: 1));
                     Navigator.pushNamed(context, MyRouter.homeRoute);
                   },
                   child: AnimatedContainer(
                     duration: Duration(seconds: 1),
                     height: 50.0,
                     width: changeButton ? 50 : 150.0,
                     //color: Colors.blue,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius:BorderRadius.circular(changeButton ? 50 : 8),
                     ),
                     alignment: Alignment.center,
                     child: changeButton? Icon(Icons.done,color: Colors.white,):Text('Login',style:
                     TextStyle(
                       color: Colors.white,
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                     ),),

                   ),
                 ),
               ],
             ),
           ),
         ],
        ),
      ),
    );
  }
}
