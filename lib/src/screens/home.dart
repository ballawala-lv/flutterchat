import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatty'),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('test').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData) return const Text('...loading');
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data.documents[index]['name']),
              );
            },
          );
        },
      )
    );
  }
}