import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtistRecord extends FirestoreRecord {
  ArtistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('artist')
          : FirebaseFirestore.instance.collectionGroup('artist');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('artist').doc();

  static Stream<ArtistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtistRecord.fromSnapshot(s));

  static Future<ArtistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtistRecord.fromSnapshot(s));

  static ArtistRecord fromSnapshot(DocumentSnapshot snapshot) => ArtistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtistRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtistRecordDocumentEquality implements Equality<ArtistRecord> {
  const ArtistRecordDocumentEquality();

  @override
  bool equals(ArtistRecord? e1, ArtistRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(ArtistRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is ArtistRecord;
}
