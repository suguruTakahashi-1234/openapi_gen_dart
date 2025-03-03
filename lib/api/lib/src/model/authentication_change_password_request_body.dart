//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authentication_change_password_request_body.g.dart';

/// The body of a password change request.
///
/// Properties:
/// * [kdfResultOldPassword] - The KDF result of the old password.
/// * [kdfResultNewPassword] - The new KDF result that should be used from now on.
@BuiltValue()
abstract class AuthenticationChangePasswordRequestBody
    implements
        Built<AuthenticationChangePasswordRequestBody,
            AuthenticationChangePasswordRequestBodyBuilder> {
  /// The KDF result of the old password.
  @BuiltValueField(wireName: r'kdfResultOldPassword')
  String? get kdfResultOldPassword;

  /// The new KDF result that should be used from now on.
  @BuiltValueField(wireName: r'kdfResultNewPassword')
  String? get kdfResultNewPassword;

  AuthenticationChangePasswordRequestBody._();

  factory AuthenticationChangePasswordRequestBody(
          [void updates(AuthenticationChangePasswordRequestBodyBuilder b)]) =
      _$AuthenticationChangePasswordRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthenticationChangePasswordRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthenticationChangePasswordRequestBody> get serializer =>
      _$AuthenticationChangePasswordRequestBodySerializer();
}

class _$AuthenticationChangePasswordRequestBodySerializer
    implements PrimitiveSerializer<AuthenticationChangePasswordRequestBody> {
  @override
  final Iterable<Type> types = const [
    AuthenticationChangePasswordRequestBody,
    _$AuthenticationChangePasswordRequestBody
  ];

  @override
  final String wireName = r'AuthenticationChangePasswordRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthenticationChangePasswordRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kdfResultOldPassword != null) {
      yield r'kdfResultOldPassword';
      yield serializers.serialize(
        object.kdfResultOldPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kdfResultNewPassword != null) {
      yield r'kdfResultNewPassword';
      yield serializers.serialize(
        object.kdfResultNewPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthenticationChangePasswordRequestBody object, {
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
    required AuthenticationChangePasswordRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kdfResultOldPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kdfResultOldPassword = valueDes;
          break;
        case r'kdfResultNewPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.kdfResultNewPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthenticationChangePasswordRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthenticationChangePasswordRequestBodyBuilder();
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
