import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:monologue/models/frame_model.dart';
import 'package:monologue/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final TextEditingController idSigninTextEditingController = TextEditingController();
final TextEditingController pwSigninTextEditingController = TextEditingController();
final TextEditingController idSignupTextEditingController = TextEditingController();
final TextEditingController pwSignupTextEditingController = TextEditingController();
final TextEditingController checkPwSignupTextEditingController = TextEditingController();
final TextEditingController usernameSignupTextEditingController = TextEditingController();
final TextEditingController searchHomeTextEditingController = TextEditingController();
final TextEditingController promptTextEditingController = TextEditingController();
late TabController tabController;
late SharedPreferences prefs;
late var firstCamera;
XFile? image;
List<String> imagePath = [];
List<String> selectedImage = [];
List<FrameModel> frame = [];
List<FrameModel> myFrame = [];
bool login = false;
String? accessToken;
String? refreshToken;
UserModel? user;
