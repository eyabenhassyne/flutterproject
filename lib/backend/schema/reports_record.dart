import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "targetType" field.
  String? _targetType;
  String get targetType => _targetType ?? '';
  bool hasTargetType() => _targetType != null;

  // "targetId" field.
  String? _targetId;
  String get targetId => _targetId ?? '';
  bool hasTargetId() => _targetId != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "reportedBy" field.
  String? _reportedBy;
  String get reportedBy => _reportedBy ?? '';
  bool hasReportedBy() => _reportedBy != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _targetType = snapshotData['targetType'] as String?;
    _targetId = snapshotData['targetId'] as String?;
    _reason = snapshotData['reason'] as String?;
    _reportedBy = snapshotData['reportedBy'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? targetType,
  String? targetId,
  String? reason,
  String? reportedBy,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'targetType': targetType,
      'targetId': targetId,
      'reason': reason,
      'reportedBy': reportedBy,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.targetType == e2?.targetType &&
        e1?.targetId == e2?.targetId &&
        e1?.reason == e2?.reason &&
        e1?.reportedBy == e2?.reportedBy &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash(
      [e?.targetType, e?.targetId, e?.reason, e?.reportedBy, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
