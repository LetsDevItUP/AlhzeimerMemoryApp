// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memories_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MemoriesCollectionRecord> _$memoriesCollectionRecordSerializer =
    new _$MemoriesCollectionRecordSerializer();

class _$MemoriesCollectionRecordSerializer
    implements StructuredSerializer<MemoriesCollectionRecord> {
  @override
  final Iterable<Type> types = const [
    MemoriesCollectionRecord,
    _$MemoriesCollectionRecord
  ];
  @override
  final String wireName = 'MemoriesCollectionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MemoriesCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.memoryImage;
    if (value != null) {
      result
        ..add('memoryImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memoryTitle;
    if (value != null) {
      result
        ..add('memoryTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memoryDate;
    if (value != null) {
      result
        ..add('memoryDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memoryDescription;
    if (value != null) {
      result
        ..add('memoryDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MemoriesCollectionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MemoriesCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'memoryImage':
          result.memoryImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'memoryTitle':
          result.memoryTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'memoryDate':
          result.memoryDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'memoryDescription':
          result.memoryDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MemoriesCollectionRecord extends MemoriesCollectionRecord {
  @override
  final String? memoryImage;
  @override
  final String? memoryTitle;
  @override
  final String? memoryDate;
  @override
  final String? memoryDescription;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MemoriesCollectionRecord(
          [void Function(MemoriesCollectionRecordBuilder)? updates]) =>
      (new MemoriesCollectionRecordBuilder()..update(updates))._build();

  _$MemoriesCollectionRecord._(
      {this.memoryImage,
      this.memoryTitle,
      this.memoryDate,
      this.memoryDescription,
      this.ffRef})
      : super._();

  @override
  MemoriesCollectionRecord rebuild(
          void Function(MemoriesCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemoriesCollectionRecordBuilder toBuilder() =>
      new MemoriesCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemoriesCollectionRecord &&
        memoryImage == other.memoryImage &&
        memoryTitle == other.memoryTitle &&
        memoryDate == other.memoryDate &&
        memoryDescription == other.memoryDescription &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, memoryImage.hashCode), memoryTitle.hashCode),
                memoryDate.hashCode),
            memoryDescription.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MemoriesCollectionRecord')
          ..add('memoryImage', memoryImage)
          ..add('memoryTitle', memoryTitle)
          ..add('memoryDate', memoryDate)
          ..add('memoryDescription', memoryDescription)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MemoriesCollectionRecordBuilder
    implements
        Builder<MemoriesCollectionRecord, MemoriesCollectionRecordBuilder> {
  _$MemoriesCollectionRecord? _$v;

  String? _memoryImage;
  String? get memoryImage => _$this._memoryImage;
  set memoryImage(String? memoryImage) => _$this._memoryImage = memoryImage;

  String? _memoryTitle;
  String? get memoryTitle => _$this._memoryTitle;
  set memoryTitle(String? memoryTitle) => _$this._memoryTitle = memoryTitle;

  String? _memoryDate;
  String? get memoryDate => _$this._memoryDate;
  set memoryDate(String? memoryDate) => _$this._memoryDate = memoryDate;

  String? _memoryDescription;
  String? get memoryDescription => _$this._memoryDescription;
  set memoryDescription(String? memoryDescription) =>
      _$this._memoryDescription = memoryDescription;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MemoriesCollectionRecordBuilder() {
    MemoriesCollectionRecord._initializeBuilder(this);
  }

  MemoriesCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _memoryImage = $v.memoryImage;
      _memoryTitle = $v.memoryTitle;
      _memoryDate = $v.memoryDate;
      _memoryDescription = $v.memoryDescription;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemoriesCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemoriesCollectionRecord;
  }

  @override
  void update(void Function(MemoriesCollectionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemoriesCollectionRecord build() => _build();

  _$MemoriesCollectionRecord _build() {
    final _$result = _$v ??
        new _$MemoriesCollectionRecord._(
            memoryImage: memoryImage,
            memoryTitle: memoryTitle,
            memoryDate: memoryDate,
            memoryDescription: memoryDescription,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
