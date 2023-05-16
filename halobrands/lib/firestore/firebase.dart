import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:halobrands/brand.dart';

class Firebase {
  static final Firebase _instance = Firebase._internal();
  factory Firebase() => _instance;
  Firebase._internal();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Brand>> getBrands() async {
    final QuerySnapshot querySnapshot =
        await _firestore.collection('brands').get();
    final List<Brand> brands = querySnapshot.docs
        .map((doc) =>
            Brand(name: '$doc.data().name', category: '$doc.data().category'))
        .toList();
    return brands;
  }
}
