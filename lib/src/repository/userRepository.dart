import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teste_izagro/src/models/user.dart';

class UserRepository{
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static save(UserApp user) async {
    try{
      await _firestore.collection('users').doc(user.id).set({
        'id': user.id,
        'nome': user.nome,
        'email' : user.email
      });
    } catch(e) {
      print(e);
    }
  }

  static getNome(String docId) async {
      DocumentSnapshot documentSnapshot;
    try {
      documentSnapshot = await _firestore.collection('users').doc(docId).get();
      return documentSnapshot.get('nome');
    } catch(e) {

    }
  }


}