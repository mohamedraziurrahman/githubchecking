// function to implement the google signin

// ignore_for_file: avoid_print, duplicate_ignore

// creating firebase instance
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
	final GoogleSignIn googleSignIn = GoogleSignIn();
	final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
	// ignore: duplicate_ignore
	if (googleSignInAccount != null) {
	final GoogleSignInAuthentication googleSignInAuthentication =
		await googleSignInAccount.authentication;
	final AuthCredential authCredential = GoogleAuthProvider.credential(
		idToken: googleSignInAuthentication.idToken,
		accessToken: googleSignInAuthentication.accessToken);
	
	// Getting users credential
	UserCredential result = await auth.signInWithCredential(authCredential);
	User user = result.user;
	// ignore: avoid_print
	print(user);
	if (result != null) {
  // ignore: use_build_context_synchronously
  print("result not equal to null");
		// Navigator.pushReplacement(
		// 	context, MaterialPageRoute(builder: (context) => GoogleSignIn()));
	} // if result not null we simply call the MaterialpageRoute,
		// for go to the HomePage screen
	}
}
