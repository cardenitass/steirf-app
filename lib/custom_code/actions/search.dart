// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference> search(String name) async {
  final firestore = FirebaseFirestore.instance;
  //reference
  DocumentReference ref = firestore.doc('/users/raBoHpQNBhYwI8SjKzoGaWbuhvi2');
  //select from products
  ProductsRecord product = await ProductsRecord.getDocumentOnce(ref);

  final pordList = firestore.collection('products');

  return ref;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
