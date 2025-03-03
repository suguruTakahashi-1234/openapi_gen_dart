//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_create_request_body.g.dart';

/// Body of a user create request.
///
/// Properties:
/// * [userName] - Name of the user to be created.
/// * [userDisplayName] - Display name of the user to be created.
/// * [kdfPasswordResult] - Result of the KDF for the user password.
@BuiltValue()
abstract class UsersCreateRequestBody
    implements Built<UsersCreateRequestBody, UsersCreateRequestBodyBuilder> {
  /// Name of the user to be created.
  @BuiltValueField(wireName: r'userName')
  String? get userName;

  /// Display name of the user to be created.
  @BuiltValueField(wireName: r'userDisplayName')
  String? get userDisplayName;

  /// Result of the KDF for the user password.
  @BuiltValueField(wireName: r'kdfPasswordResult')
  String? get kdfPasswordResult;

  UsersCreateRequestBody._();

  factory UsersCreateRequestBody(
          [void updates(UsersCreateRequestBodyBuilder b)]) =
      _$UsersCreateRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersCreateRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersCreateRequestBody> get serializer =>
      _$UsersCreateRequestBodySerializer();
}

class _$UsersCreateRequestBodySerializer
    implements PrimitiveSerializer<UsersCreateRequestBody> {
  @override
  final Iterable<Type> types = const [
    UsersCreateRequestBody,
    _$UsersCreateRequestBody
  ];

  @override
  final String wireName = r'UsersCreateRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersCreateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userDisplayName != null) {
      yield r'userDisplayName';
      yield serializers.serialize(
        object.userDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kdfPasswordResult != null) {
      yield r'kdfPasswordResult';
      yield serializers.serialize(
        object.kdfPasswordResult,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersCreateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersCreateRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
          break;
        case r'userDisplayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userDisplayName = valueDes;
          break;
        case r'kdfPasswordResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kdfPasswordResult = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersCreateRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersCreateRequestBodyBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
