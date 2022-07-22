import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:windows/data/BaseBean.dart';

abstract class BaseService<T extends BaseBean> {
  final String path;
  final firestoreInstance = FirebaseFirestore.instance;

  T mapToBean(Map<String, dynamic> map, String key);

  CollectionReference collectionReference() {
    return firestoreInstance.collection(path);
  }

  BaseService(this.path);

  Future<List<T>?> getAllData() async {
    if (kDebugMode) {
      print("fetching data on $path");
    }
    QuerySnapshot data = await collectionReference().get();
    List<T> dataList = List.empty();
    data.docs.forEach((element) {
      T data = element.data() as T;
      data.id = element.id;
      dataList.add(data);
    });
    return dataList;
  }

  Future<T?> getSingleData(String id) async {
    DocumentSnapshot documentSnapshot =
        await collectionReference().doc(id).get();
    return documentSnapshot.data() as T;
  }
}
