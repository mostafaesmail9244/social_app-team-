import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';

class SendNotificationsHelper {
  SendNotificationsHelper._();
  static final SendNotificationsHelper _instance = SendNotificationsHelper._();
  factory SendNotificationsHelper() => _instance;

  Future<String?> getDeviceToken() async {
    final devicetoken = await FirebaseMessaging.instance.getToken();
    debugPrint("device token : $devicetoken");
    return devicetoken;
  }

  Future<String?> getAccessToken() async {
    const serviceAccountJson = {
      "type": "service_account",
      "project_id": "social-app-3a3b5",
      "private_key_id": "3a6d45ed7f96775db815edd3dedffb568c52431c",
      "private_key":
          "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQChV2rlgs+7L1Qf\nx2FMbIaT/dU5UdlYsdNzoJEz6Ie/o/DBQcngQtEX7ctin0DawVE4JE368VdifW4P\nn7pixtH04PZmLt8TYSFgj1qi7X/ofgzaT4m9xDgXcBwmVNYYjR6fNq+DHMRYvwDq\ni+qfUW9d431wjRySe1udxF4X+OeNqGBSmunGPnMO/WfvzfgpvoxBm1q+/v3+edXq\nunNgjlI7a3WIQltNXJIYlL/x65vwrrctLgh4Qi1H1uBRm9CXdO42QoILTGN14EJx\neRPIFf7ogaxeFAqBrR//20cKbEJESELqX9g/KGZHNgDWqOJkzhg8X8yIzHf3srS7\njr1ctpsvAgMBAAECggEAS4fJls1Q41/qQYBM2AK8U97SaaWcGu4QwAIsx8C1gC1G\n4aojUFXnXgzoGHDWYzJ6C87PJMnD72sp0a2ki2ZpVvrTzw1lSETB49rogvqtVRFh\ngfgXUxvfaHWG8BjqK48xBTcMHlSixKsSSjsbKN9uQ+ViTYT6GccfIjISHKXc/M7W\nPHZQ2BamfDyxyg3u8Et9J7MheUnqLvrRcCv33zciNa3kU+y65AsgUJYD1MEdlTaE\nx5feAClP9j8lHwDgvehENVgEOZSUrSC5+7gGKTM4JBoO1e3AKXiff9xyrpBS0IRx\n+8dHWKrlAbR04EtsvkJ29/FmhQ752OqROJoNjnbciQKBgQDXyKJ+cya+WV+3g5Yx\nMatDEgfGvi7s4t4zTOhTCzcAwI39AhN5kxrxzw/PCX7dE7PvLpKa1xst2W2UAtvu\n9Os8l+oWnDW60t8LL8e7d9/mf5rJ8NCBpNCvHXZlAvjGM8y7gDTfCdECIHz+pz40\ne7Wj744hwCgXrML6LKU6+0YxxwKBgQC/aULf+sMs/oQ8QS54L8oL2esKBbL6yuMx\n0C2RijaTqZUqTvYuY/l0kRNCEG5LdCgPcrBCJwwA8w1DoOjLYQDni5gq8A1By1/H\nNodBHW4rNM3YL0EShoB5Ev2GULQeZkHgKywT+O653FK7Ay++sn6SOhEbeqAJu3k4\nlvhgiXZLWQKBgCLwxf8bvkZMSod4szU8CbNOlBvGZ+rLwZck+OmZg0qH43X4hBbH\njzFgifrIWtaJfjVYoTyZYDlIX8n7vIkw93ZUUv9eRAUAaEVzczAT9RlpyDKy39Be\nU7xHVQh+NrJBaQFjfSwwdruVbyf9BMGS1pK5E5a7esJ6owfHeunWDkO5AoGADDGZ\neAlSi7g/FlOUsUViGrUsOvw39bAdHxxC+uWSKoAAJ6zWFAh8aMehMXE4hYgF0U4e\nGmjAZAMX0joa+nHYi+ehrwKR5aIeHOPFZAmK7ie0AVSpUZPN9WiXTAoyH0mmYrB9\nY1xVYPO/NXizfvOCCrC2TEjYjyYpR8ieVBANwCkCgYBWiYTIjsIjg6CeCLtT0PJD\n8DcZG+Nhwm9cHBdLTT6V7cG56NAwBxTnWa4u1iZodpX5gV96I3w6Abk95YDaJ6Iz\npr042mtxhO0HhPXIQbf7ddLsfc0iUufNMQ0ZG9+1DxR4mwjvUvrhnNo1K3dwp5+n\n/Ut7hwFiAnMtlLM/Yu+tuA==\n-----END PRIVATE KEY-----\n",
      "client_email":
          "firebase-adminsdk-kblxy@social-app-3a3b5.iam.gserviceaccount.com",
      "client_id": "106829341746457134958",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url":
          "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url":
          "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-kblxy%40social-app-3a3b5.iam.gserviceaccount.com",
      "universe_domain": "googleapis.com"
    };

    const List<String> scopes = [
      "https://www.googleapis.com/auth/userinfo.email",
      "https://www.googleapis.com/auth/firebase.database",
      "https://www.googleapis.com/auth/firebase.messaging"
    ];
    http.Client client = http.Client();

    try {
      client = await auth.clientViaServiceAccount(
          auth.ServiceAccountCredentials.fromJson(serviceAccountJson), scopes);

      auth.AccessCredentials credentials =
          await auth.obtainAccessCredentialsViaServiceAccount(
        auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
        scopes,
        client,
      );

      debugPrint("Access Token: ${credentials.accessToken.data}");
      return credentials.accessToken.data;
    } catch (e) {
      debugPrint("==========> Error getting access token: $e");
      return null;
    } finally {
      client.close();
    }
  }

  Future<void> sendNotifications(
      {required String msg, required String fcmToken}) async {
    final serverKeyAuthorization = await getAccessToken();
    if (serverKeyAuthorization == null) {
      debugPrint("Error: Missing server key authorization");
      return;
    }
    const String urlEndPoint =
        "https://fcm.googleapis.com/v1/projects/social-app-3a3b5/messages:send";
    try {
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $serverKeyAuthorization',
      };
      final body = {
        "message": {
          "token": fcmToken,
          "notification": {
            "title": CashHelper.get(key: CashConstants.userName),
            "body": msg
          },
          // "data": {"story_id": "story_12345"}
        }
      };

      final response = await http.post(
        Uri.parse(urlEndPoint),
        body: jsonEncode(body),
        headers: headers,
      );

      debugPrint('🔔🔔🔔 Response Status Code : ${response.statusCode}');
    } catch (e) {
      debugPrint("🔕 Error sending notification: $e");
    }
  }
}
