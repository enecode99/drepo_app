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
    value = object.receiverUsers;
    if (value != null) {
      result
        ..add('receiver_users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
        case 'receiver_users':
          result.receiverUsers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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
  final String notificationDetails;
  @override
  final DocumentReference<Object> notificationSender;
  @override
  final BuiltList<DocumentReference<Object>> receiverUsers;
  @override
  final DocumentReference<Object> reference;

  factory _$NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =>
      (new NotificationsRecordBuilder()..update(updates)).build();

  _$NotificationsRecord._(
      {this.notificationType,
      this.notificationTime,
      this.notificationDetails,
      this.notificationSender,
      this.receiverUsers,
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
        notificationDetails == other.notificationDetails &&
        notificationSender == other.notificationSender &&
        receiverUsers == other.receiverUsers &&
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
                    notificationDetails.hashCode),
                notificationSender.hashCode),
            receiverUsers.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationsRecord')
          ..add('notificationType', notificationType)
          ..add('notificationTime', notificationTime)
          ..add('notificationDetails', notificationDetails)
          ..add('notificationSender', notificationSender)
          ..add('receiverUsers', receiverUsers)
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

  String _notificationDetails;
  String get notificationDetails => _$this._notificationDetails;
  set notificationDetails(String notificationDetails) =>
      _$this._notificationDetails = notificationDetails;

  DocumentReference<Object> _notificationSender;
  DocumentReference<Object> get notificationSender =>
      _$this._notificationSender;
  set notificationSender(DocumentReference<Object> notificationSender) =>
      _$this._notificationSender = notificationSender;

  ListBuilder<DocumentReference<Object>> _receiverUsers;
  ListBuilder<DocumentReference<Object>> get receiverUsers =>
      _$this._receiverUsers ??= new ListBuilder<DocumentReference<Object>>();
  set receiverUsers(ListBuilder<DocumentReference<Object>> receiverUsers) =>
      _$this._receiverUsers = receiverUsers;

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
      _notificationDetails = $v.notificationDetails;
      _notificationSender = $v.notificationSender;
      _receiverUsers = $v.receiverUsers?.toBuilder();
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
    _$NotificationsRecord _$result;
    try {
      _$result = _$v ??
          new _$NotificationsRecord._(
              notificationType: notificationType,
              notificationTime: notificationTime,
              notificationDetails: notificationDetails,
              notificationSender: notificationSender,
              receiverUsers: _receiverUsers?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'receiverUsers';
        _receiverUsers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
