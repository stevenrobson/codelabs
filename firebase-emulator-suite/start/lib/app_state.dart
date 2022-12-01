// ignore_for_file: avoid_print

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'entry.dart';

class AppState {
  AppState() {
    _entriesStreamController = StreamController.broadcast(onListen: () {
      _entriesStreamController.add([
        Entry(
          date: '10/09/2022',
          text: lorem,
          title: '[Example] My Journal Entry',
        )
      ]);
    });
  }

  // This will change to the type User from the Firebase Authentication package
  // Changing it’s type now would cause the app to throw an error
  late User? user;
  late StreamController<List<Entry>> _entriesStreamController;
  Stream<List<Entry>> get entries =>
      _entriesStreamController.stream.asBroadcastStream();

  Future<void> logIn(String email, String password) async {
    print('TODO: AppState.login');
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (credential.user != null) {
      user = credential.user!;
      _listenForEntries();
    } else {
      print('no user');
    }

    await _listenForEntries();
  }

  void writeEntryToFirebase(Entry entry) {
    print('TODO: AppState.writeEntryToFirebase');
    FirebaseFirestore.instance.collection('Entries').add(<String, dynamic>{
      'title': entry.title,
      'date': entry.date,
      'text': entry.text
    });
  }

  Future<void> _listenForEntries() async {
    print('TODO: AppState._listenForEntries');
    FirebaseFirestore.instance
        .collection('Entries')
        .snapshots()
        .listen((event) {
      final entries = event.docs.map((DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Entry(
            date: data['date'] as String,
            text: data['text'] as String,
            title: data['title'] as String);
      }).toList();

      _entriesStreamController.add(entries);
    });
  }
}

const lorem =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
    ''';
