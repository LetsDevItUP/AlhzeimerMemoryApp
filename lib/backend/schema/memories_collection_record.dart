import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'memories_collection_record.g.dart';

abstract class MemoriesCollectionRecord
    implements
        Built<MemoriesCollectionRecord, MemoriesCollectionRecordBuilder> {
  static Serializer<MemoriesCollectionRecord> get serializer =>
      _$memoriesCollectionRecordSerializer;

  String? get memoryImage;

  String? get memoryTitle;

  String? get memoryDate;

  String? get memoryDescription;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MemoriesCollectionRecordBuilder builder) =>
      builder
        ..memoryImage = ''
        ..memoryTitle = ''
        ..memoryDate = ''
        ..memoryDescription = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('memoriesCollection');

  static Stream<MemoriesCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MemoriesCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MemoriesCollectionRecord._();
  factory MemoriesCollectionRecord(
          [void Function(MemoriesCollectionRecordBuilder) updates]) =
      _$MemoriesCollectionRecord;

  static MemoriesCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMemoriesCollectionRecordData({
  String? memoryImage,
  String? memoryTitle,
  String? memoryDate,
  String? memoryDescription,
}) {
  final firestoreData = serializers.toFirestore(
    MemoriesCollectionRecord.serializer,
    MemoriesCollectionRecord(
      (m) => m
        ..memoryImage = memoryImage
        ..memoryTitle = memoryTitle
        ..memoryDate = memoryDate
        ..memoryDescription = memoryDescription,
    ),
  );

  return firestoreData;
}
