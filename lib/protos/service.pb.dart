///
//  Generated code. Do not modify.
//  source: service.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('protos'))
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  User() : super();
  User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  static User create() => User();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  static User getDefault() => _defaultInstance ??= create()..freeze();
  static User _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class UserMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserMessage', package: const $pb.PackageName('protos'))
    ..aOS(1, 'id')
    ..aOS(2, 'content')
    ..aOS(3, 'timeStamp')
    ..hasRequiredFields = false
  ;

  UserMessage() : super();
  UserMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UserMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UserMessage clone() => UserMessage()..mergeFromMessage(this);
  UserMessage copyWith(void Function(UserMessage) updates) => super.copyWith((message) => updates(message as UserMessage));
  $pb.BuilderInfo get info_ => _i;
  static UserMessage create() => UserMessage();
  UserMessage createEmptyInstance() => create();
  static $pb.PbList<UserMessage> createRepeated() => $pb.PbList<UserMessage>();
  static UserMessage getDefault() => _defaultInstance ??= create()..freeze();
  static UserMessage _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get content => $_getS(1, '');
  set content($core.String v) { $_setString(1, v); }
  $core.bool hasContent() => $_has(1);
  void clearContent() => clearField(2);

  $core.String get timeStamp => $_getS(2, '');
  set timeStamp($core.String v) { $_setString(2, v); }
  $core.bool hasTimeStamp() => $_has(2);
  void clearTimeStamp() => clearField(3);
}

class Connect extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Connect', package: const $pb.PackageName('protos'))
    ..a<User>(1, 'user', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..aOB(2, 'active')
    ..hasRequiredFields = false
  ;

  Connect() : super();
  Connect.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Connect.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Connect clone() => Connect()..mergeFromMessage(this);
  Connect copyWith(void Function(Connect) updates) => super.copyWith((message) => updates(message as Connect));
  $pb.BuilderInfo get info_ => _i;
  static Connect create() => Connect();
  Connect createEmptyInstance() => create();
  static $pb.PbList<Connect> createRepeated() => $pb.PbList<Connect>();
  static Connect getDefault() => _defaultInstance ??= create()..freeze();
  static Connect _defaultInstance;

  User get user => $_getN(0);
  set user(User v) { setField(1, v); }
  $core.bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  $core.bool get active => $_get(1, false);
  set active($core.bool v) { $_setBool(1, v); }
  $core.bool hasActive() => $_has(1);
  void clearActive() => clearField(2);
}

class Close extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Close', package: const $pb.PackageName('protos'))
    ..hasRequiredFields = false
  ;

  Close() : super();
  Close.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Close.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Close clone() => Close()..mergeFromMessage(this);
  Close copyWith(void Function(Close) updates) => super.copyWith((message) => updates(message as Close));
  $pb.BuilderInfo get info_ => _i;
  static Close create() => Close();
  Close createEmptyInstance() => create();
  static $pb.PbList<Close> createRepeated() => $pb.PbList<Close>();
  static Close getDefault() => _defaultInstance ??= create()..freeze();
  static Close _defaultInstance;
}

