import 'package:codepur/utils/MyRouter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

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
             'Welcome',
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
                 ElevatedButton(
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
