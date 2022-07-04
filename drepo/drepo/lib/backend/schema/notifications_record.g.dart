// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsRecord> _$notificationsRecordSerializer =
    new _$NotificationsRecordSerializer();

class _$NotificationsRecordSerializer
    implements StructuredSerializer<NotificationsRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationsRecord,
    _$NotificationsRecord
  ];
  @override
  final String wireName = 'NotificationsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NotificationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.notificationType;
    if (value != null) {
      result
        ..add('notification_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationTime;
    if (value != null) {
      result
        ..add('notification_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.notificationUser;
    if (value != null) {
      result
        ..add('notification_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.notificationDetails;
    if (value != null) {
      result
        ..add('notification_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationSender;
    if (value != null) {
      result
        ..add('notification_sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  NotificationsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'notification_type':
          result.notificationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_time':
          result.notificationTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'notification_user':
          result.notificationUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'notification_details':
          result.notificationDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_sender':
          result.notificationSender = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsRecord extends NotificationsRecord {
  @override
  final String notificationType;
  @override
  final DateTime notificationTime;
  @override
  final DocumentReference<Object> notificationUser;
  @override
  final String notificationDetails;
  @override
  final DocumentReference<Object> notificationSender;
  @override
  final DocumentReference<Object> reference;

  factory _$NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =>
      (new NotificationsRecordBuilder()..update(updates)).build();

  _$NotificationsRecord._(
      {this.notificationType,
      this.notificationTime,
      this.notificationUser,
      this.notificationDetails,
      this.notificationSender,
      this.reference})
      : super._();

  @override
  NotificationsRecord rebuild(
          void Function(NotificationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsRecordBuilder toBuilder() =>
      new NotificationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsRecord &&
        notificationType == other.notificationType &&
        notificationTime == other.notificationTime &&
        notificationUser == other.notificationUser &&
        notificationDetails == other.notificationDetails &&
        notificationSender == other.notificationSender &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, notificationType.hashCode),
                        notificationTime.hashCode),
                    notificationUser.hashCode),
                notificationDetails.hashCode),
            notificationSender.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationsRecord')
          ..add('notificationType', notificationType)
          ..add('notificationTime', notificationTime)
          ..add('notificationUser', notificationUser)
          ..add('notificationDetails', notificationDetails)
          ..add('notificationSender', notificationSender)
          ..add('reference', reference))
        .toString();
  }
}

class NotificationsRecordBuilder
    implements Builder<NotificationsRecord, NotificationsRecordBuilder> {
  _$NotificationsRecord _$v;

  String _notificationType;
  String get notificationType => _$this._notificationType;
  set notificationType(String notificationType) =>
      _$this._notificationType = notificationType;

  DateTime _notificationTime;
  DateTime get notificationTime => _$this._notificationTime;
  set notificationTime(DateTime notificationTime) =>
      _$this._notificationTime = notificationTime;

  DocumentReference<Object> _notificationUser;
  DocumentReference<Object> get notificationUser => _$this._notificationUser;
  set notificationUser(DocumentReference<Object> notificationUser) =>
      _$this._notificationUser = notificationUser;

  String _notificationDetails;
  String get notificationDetails => _$this._notificationDetails;
  set notificationDetails(String notificationDetails) =>
      _$this._notificationDetails = notificationDetails;

  DocumentReference<Object> _notificationSender;
  DocumentReference<Object> get notificationSender =>
      _$this._notificationSender;
  set notificationSender(DocumentReference<Object> notificationSender) =>
      _$this._notificationSender = notificationSender;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NotificationsRecordBuilder() {
    NotificationsRecord._initializeBuilder(this);
  }

  NotificationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationType = $v.notificationType;
      _notificationTime = $v.notificationTime;
      _notificationUser = $v.notificationUser;
      _notificationDetails = $v.notificationDetails;
      _notificationSender = $v.notificationSender;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsRecord;
  }

  @override
  void update(void Function(NotificationsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationsRecord build() {
    final _$result = _$v ??
        new _$NotificationsRecord._(
            notificationType: notificationType,
            notificationTime: notificationTime,
            notificationUser: notificationUser,
            notificationDetails: notificationDetails,
            notificationSender: notificationSender,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
