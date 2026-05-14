import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LikesRecord extends FirestoreRecord {
  LikesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postRef" field.
  DocumentReference? _postRef;
  DocumentReference? get postRef => _postRef;
  bool hasPostRef() => _postRef != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _postRef = snapshotData['postRef'] as DocumentReference?;
    _userId = snapshotData['userId'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('likes');

  static Stream<LikesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LikesRecord.fromSnapshot(s));

  static Future<LikesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LikesRecord.fromSnapshot(s));

  static LikesRecord fromSnapshot(DocumentSnapshot snapshot) => LikesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LikesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LikesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LikesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LikesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLikesRecordData({
  DocumentReference? postRef,
  String? userId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postRef': postRef,
      'userId': userId,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class LikesRecordDocumentEquality implements Equality<LikesRecord> {
  const LikesRecordDocumentEquality();

  @override
  bool equals(LikesRecord? e1, LikesRecord? e2) {
    return e1?.postRef == e2?.postRef &&
        e1?.userId == e2?.userId &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(LikesRecord? e) =>
      const ListEquality().hash([e?.postRef, e?.userId, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is LikesRecord;
}
