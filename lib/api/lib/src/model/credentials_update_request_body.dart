//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/credentials_update_credential_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_update_request_body.g.dart';

/// The body of a credential update request.
///
/// Properties:
/// * [credential]
@BuiltValue()
abstract class CredentialsUpdateRequestBody
    implements
        Built<CredentialsUpdateRequestBody,
            CredentialsUpdateRequestBodyBuilder> {
  @BuiltValueField(wireName: r'credential')
  CredentialsUpdateCredentialRequest? get credential;

  CredentialsUpdateRequestBody._();

  factory CredentialsUpdateRequestBody(
          [void updates(CredentialsUpdateRequestBodyBuilder b)]) =
      _$CredentialsUpdateRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsUpdateRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsUpdateRequestBody> get serializer =>
      _$CredentialsUpdateRequestBodySerializer();
}

class _$CredentialsUpdateRequestBodySerializer
    implements PrimitiveSerializer<CredentialsUpdateRequestBody> {
  @override
  final Iterable<Type> types = const [
    CredentialsUpdateRequestBody,
    _$CredentialsUpdateRequestBody
  ];

  @override
  final String wireName = r'CredentialsUpdateRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsUpdateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credential != null) {
      yield r'credential';
      yield serializers.serialize(
        object.credential,
        specifiedType: const FullType(CredentialsUpdateCredentialRequest),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsUpdateRequestBody object, {
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
    required CredentialsUpdateRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialsUpdateCredentialRequest),
          ) as CredentialsUpdateCredentialRequest;
          result.credential.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialsUpdateRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsUpdateRequestBodyBuilder();
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
