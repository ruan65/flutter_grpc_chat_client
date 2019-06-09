import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_chat_grpc_client/protos/service.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ChatService {
  User user = User();
  static BroadcastClient broadcastClient;

  ChatService(String name) {
    user
      ..clearName()
      ..name = name
      ..clearId()
      ..id = sha256.convert(utf8.encode(user.name)).toString();

    broadcastClient = BroadcastClient(ClientChannel('192.168.1.2',
        port: 8065,
        options: ChannelOptions(credentials: ChannelCredentials.insecure())));
  }

  Future<Close> sendMessage(String body) async {
    return broadcastClient.broadcastMessage(
      UserMessage()
        ..id = user.id
        ..content = body
        ..timeStamp = DateTime.now().toIso8601String(),
    );
  }

  Stream<UserMessage> receiveMessage() async* {
    Connect connect = Connect()
        ..user = user
        ..active = true;

    await for (var msg in broadcastClient.createStream(connect)) {
      yield msg;
    }
  }
}
