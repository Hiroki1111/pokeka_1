import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pokeka_1/View/Record/Battle_Record.dart';

class AddDeck extends StatefulWidget {
  const AddDeck({super.key});

  @override
  State<AddDeck> createState() => _AddDeckState();
}

class _AddDeckState extends State<AddDeck> {

  final _DeckName = TextEditingController();
  final uid = FirebaseAuth.instance.currentUser?.uid.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('追加'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _DeckName,
            decoration: InputDecoration(
                hintText: 'デッキ名'
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              final DeckName = <String, dynamic>{
                'DeckName': _DeckName.text,
              };
              FirebaseFirestore.instance.collection('Users').doc(uid)
                  .collection('DeckName').add(DeckName);

              Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => BattleRecordPage()
                ),
              );
            },
            icon: Icon(Icons.post_add), //アイコン
            label: Text('追加する'), //テキスト
          ),
        ],
      ),

    );
  }
}
