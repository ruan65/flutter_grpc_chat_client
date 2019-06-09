///
//  Generated code. Do not modify.
//  source: service.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'service.pb.dart';
export 'service.pb.dart';

class BroadcastClient extends $grpc.Client {
  static final _$createStream = $grpc.ClientMethod<Connect, UserMessage>(
      '/protos.Broadcast/CreateStream',
      (Connect value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => UserMessage.fromBuffer(value));
  static final _$broadcastMessage = $grpc.ClientMethod<UserMessage, Close>(
      '/protos.Broadcast/BroadcastMessage',
      (UserMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Close.fromBuffer(value));

  BroadcastClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<UserMessage> createStream(Connect request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createStream, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<Close> broadcastMessage(UserMessage request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$broadcastMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BroadcastServiceBase extends $grpc.Service {
  $core.String get $name => 'protos.Broadcast';

  BroadcastServiceBase() {
    $addMethod($grpc.ServiceMethod<Connect, UserMessage>(
        'CreateStream',
        createStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => Connect.fromBuffer(value),
        (UserMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<UserMessage, Close>(
        'BroadcastMessage',
        broadcastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => UserMessage.fromBuffer(value),
        (Close value) => value.writeToBuffer()));
  }

  $async.Stream<UserMessage> createStream_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* createStream(call, (await request) as Connect);
  }

  $async.Future<Close> broadcastMessage_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return broadcastMessage(call, await request);
  }

  $async.Stream<UserMessage> createStream(
      $grpc.ServiceCall call, Connect request);
  $async.Future<Close> broadcastMessage(
      $grpc.ServiceCall call, UserMessage request);
}
