// ignore: file_names
//SignInScreen


// ignore_for_file: file_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'functoimplementsignin.dart';


class SignInScreen extends StatefulWidget {
const SignInScreen({Key key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
_SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {


@override
Widget build(BuildContext context) {
	return Scaffold(
	body: Container(
		width: double.infinity,
		height: double.infinity,
		decoration: BoxDecoration(
		gradient: LinearGradient(
   // ignore: prefer_const_literals_to_create_immutables
			colors: [
			Colors.blue,
			Colors.red,
			],
		),
		),
		child: Card(
		margin: EdgeInsets.only(top: 200, bottom: 200, left: 30, right: 30),
		elevation: 20,
		child: Column(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: [
			Text(
				"GEEKS FOR GEEKS",
				style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
			),
			Padding(
				padding: const EdgeInsets.only(left: 20, right: 20),
				child: MaterialButton(
				color: Colors.teal[100],
				elevation: 10,
    // ignore: sort_child_properties_last
				child: Row(
					mainAxisAlignment: MainAxisAlignment.start,
					children: [
					Container(
						height: 30.0,
						width: 30.0,
						decoration: BoxDecoration(
						image: DecorationImage(
							image:
								// AssetImage('assets/images/googleimage.png'),
                const NetworkImage("https://1000logos.net/wp-content/uploads/2021/05/Google-logo-768x432.png"),
							fit: BoxFit.cover),
						shape: BoxShape.circle,
						),
					),
					SizedBox(
						width: 20,
					),
					Text("Sign In with Google")
					],
				),
				
				// by onpressed we call the function signup function
				// onPressed: (
				// 	signup(context);)
        onPressed: (() {
          signup(context);
        }),
        ),
      ),
      ],
    ),
				),),); 
        }

}

