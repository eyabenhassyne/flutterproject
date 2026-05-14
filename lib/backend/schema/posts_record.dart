import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "authorName" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "likesCount" field.
  int? _likesCount;
  int get likesCount => _likesCount ?? 0;
  bool hasLikesCount() => _likesCount != null;

  // "commentsCount" field.
  int? _commentsCount;
  int get commentsCount => _commentsCount ?? 0;
  bool hasCommentsCount() => _commentsCount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
    _category = snapshotData['category'] as String?;
    _authorName = snapshotData['authorName'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _likesCount = castToType<int>(snapshotData['likesCount']);
    _commentsCount = castToType<int>(snapshotData['commentsCount']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? title,
  String? content,
  String? category,
  String? authorName,
  DateTime? createdAt,
  int? likesCount,
  int? commentsCount,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'content': content,
      'category': category,
      'authorName': authorName,
      'createdAt': createdAt,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.content == e2?.content &&
        e1?.category == e2?.category &&
        e1?.authorName == e2?.authorName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.likesCount == e2?.likesCount &&
        e1?.commentsCount == e2?.commentsCount &&
        e1?.status == e2?.status;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.content,
        e?.category,
        e?.authorName,
        e?.createdAt,
        e?.likesCount,
        e?.commentsCount,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
