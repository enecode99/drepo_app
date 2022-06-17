import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SendEnquireCall {
  static Future<ApiCallResponse> call({
    String phoneNumber = '+255767052299',
    String receiverName = 'John',
    String enquireBody = 'Jonh has enquire your product.',
    String senderName = 'Alan',
  }) {
    final body = '''
{
  "number": "${phoneNumber}",
  "senderName": "${senderName}",
  "receiverName": "${receiverName}",
  "body": "${enquireBody}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEnquire',
      apiUrl: 'https://hook.integromat.com/lsogvi9txa93b7nhzijlrukrwhipbe1w',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'phoneNumber': phoneNumber,
        'receiverName': receiverName,
        'enquireBody': enquireBody,
        'senderName': senderName,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class DpoPayCall {
  static Future<ApiCallResponse> call({
    String companyToken = '',
    String request = '',
    int paymentAmount,
    String paymentCurrency = '',
    String serviceDescription = '',
    int serviceType,
    String serviceTypeName = '',
    String serviceDate = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'dpoPay',
      apiUrl: 'https://secure.3gdirectpay.com/API/v6/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'companyToken': companyToken,
        'Request': request,
        'PaymentAmount': paymentAmount,
        'PaymentCurrency': paymentCurrency,
        'ServiceDescription': serviceDescription,
        'ServiceType': serviceType,
        'ServiceTypeName': serviceTypeName,
        'ServiceDate': serviceDate,
      },
      bodyType: BodyType.NONE,
      returnBody: true,
    );
  }
}
