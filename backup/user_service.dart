// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:notes/Model/user.dart';

// class UserServices {

//   static CollectionReference userCollection = FirebaseFirestore.instance.collection('user');

//   static Future<void> updateUser(User user) async{
//     await userCollection.doc(user.id).set({
//       'name': user.name,
//       'email': user.email,
//       'photoProfile': user.photoProfile
//     });
//   }
// }
