import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'notification_type')
  String get notificationType;

  @nullable
  @BuiltValueField(wireName: 'notification_time')
  DateTime get notificationTime;

  @nullable
  @BuiltValueField(wireName: 'notification_details')
  String get notificationDetails;

  @nullable
  @BuiltValueField(wireName: 'notification_sender')
  DocumentReference get notificationSender;

  @nullable
  @BuiltValueField(wireName: 'receiver_users')
  BuiltList<DocumentReference> get receiverUsers;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..notificationType = ''
    ..notificationDetails = ''
    ..receiverUsers = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;

  static NotificationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNotificationsRecordData({
  String notificationType,
  DateTime notificationTime,
  String notificationDetails,
  DocumentReference notificationSender,
}) =>
    serializers.toFirestore(
        NotificationsRecord.serializer,
        NotificationsRecord((n) => n
          ..notificationType = notificationType
          ..notificationTime = notificationTime
          ..notificationDetails = notificationDetails
          ..notificationSender = notificationSender
          ..receiverUsers = null));
