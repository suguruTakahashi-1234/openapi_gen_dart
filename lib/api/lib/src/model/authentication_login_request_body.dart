//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_login_request_body.g.dart';

/// The body of a login request.
///
/// Properties:
/// * [userName] - The name of the user to log in.
/// * [kdfPasswordResult] - The result of the KDF function of the user's password.
@BuiltValue()
abstract class AuthenticationLoginRequestBody
    implements
        Built<AuthenticationLoginRequestBody,
            AuthenticationLoginRequestBodyBuilder> {
  /// The name of the user to log in.
  @BuiltValueField(wireName: r'userName')
  String? get userName;

  /// The result of the KDF function of the user's password.
  @BuiltValueField(wireName: r'kdfPasswordResult')
  String? get kdfPasswordResult;

  AuthenticationLoginRequestBody._();

  factory AuthenticationLoginRequestBody(
          [void updates(AuthenticationLoginRequestBodyBuilder b)]) =
      _$AuthenticationLoginRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthenticationLoginRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthenticationLoginRequestBody> get serializer =>
      _$AuthenticationLoginRequestBodySerializer();
}

class _$AuthenticationLoginRequestBodySerializer
    implements PrimitiveSerializer<AuthenticationLoginRequestBody> {
  @override
  final Iterable<Type> types = const [
    AuthenticationLoginRequestBody,
    _$AuthenticationLoginRequestBody
  ];

  @override
  final String wireName = r'AuthenticationLoginRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthenticationLoginRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
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
    AuthenticationLoginRequestBody object, {
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
    required AuthenticationLoginRequestBodyBuilder result,
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
  AuthenticationLoginRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthenticationLoginRequestBodyBuilder();
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
