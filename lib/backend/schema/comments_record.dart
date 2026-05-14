import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postRef" field.
  DocumentReference? _postRef;
  DocumentReference? get postRef => _postRef;
  bool hasPostRef() => _postRef != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "authorName" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "isBestAnswer" field.
  bool? _isBestAnswer;
  bool get isBestAnswer => _isBestAnswer ?? false;
  bool hasIsBestAnswer() => _isBestAnswer != null;

  void _initializeFields() {
    _postRef = snapshotData['postRef'] as DocumentReference?;
    _content = snapshotData['content'] as String?;
    _authorName = snapshotData['authorName'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _isBestAnswer = snapshotData['isBestAnswer'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? postRef,
  String? content,
  String? authorName,
  DateTime? createdAt,
  bool? isBestAnswer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postRef': postRef,
      'content': content,
      'authorName': authorName,
      'createdAt': createdAt,
      'isBestAnswer': isBestAnswer,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    return e1?.postRef == e2?.postRef &&
        e1?.content == e2?.content &&
        e1?.authorName == e2?.authorName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isBestAnswer == e2?.isBestAnswer;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash(
      [e?.postRef, e?.content, e?.authorName, e?.createdAt, e?.isBestAnswer]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
