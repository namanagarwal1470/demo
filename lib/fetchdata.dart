import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


FirebaseFirestore firestore = FirebaseFirestore.instance;

class GetUserName extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('MAATH');


    return FutureBuilder<DocumentSnapshot>(
      future: users.doc('HELLO').get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text("Full Name: ${data['KEY']} ");
        }

        return Text("loading");
      },
    );
  }
}