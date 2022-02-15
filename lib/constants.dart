import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shortz/controllers/auth_controller.dart';
import 'package:shortz/views/screens/add_video_screen.dart';
import 'package:shortz/views/screens/chat_screen.dart';
import 'package:shortz/views/screens/profile_screen.dart';
import 'package:shortz/views/screens/search_screen.dart';
import 'package:shortz/views/screens/video_screen.dart';

// colors
const backgroundcolor = Colors.white;
const buttonColor = Color(0xFFFFA000);
const borderColor = Colors.grey;

// Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

var authController = AuthController.instance;

//pages
List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  const ChatScreen(),
  ProfileScreen(uid: authController.user.uid),
];

final Map<int, Color> _amber700 = {
  700: Colors.amber,
};

final MaterialColor amberSwatch = MaterialColor(Colors.amber.value, _amber700);
