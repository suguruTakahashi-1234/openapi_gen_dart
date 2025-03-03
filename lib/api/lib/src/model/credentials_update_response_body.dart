//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/credentials_update_credential_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_update_response_body.g.dart';

/// The body of a credential update response.
///
/// Properties:
/// * [credential]
@BuiltValue()
abstract class CredentialsUpdateResponseBody
    implements
        Built<CredentialsUpdateResponseBody,
            CredentialsUpdateResponseBodyBuilder> {
  @BuiltValueField(wireName: r'credential')
  CredentialsUpdateCredentialResponse? get credential;

  CredentialsUpdateResponseBody._();

  factory CredentialsUpdateResponseBody(
          [void updates(CredentialsUpdateResponseBodyBuilder b)]) =
      _$CredentialsUpdateResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsUpdateResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsUpdateResponseBody> get serializer =>
      _$CredentialsUpdateResponseBodySerializer();
}

class _$CredentialsUpdateResponseBodySerializer
    implements PrimitiveSerializer<CredentialsUpdateResponseBody> {
  @override
  final Iterable<Type> types = const [
    CredentialsUpdateResponseBody,
    _$CredentialsUpdateResponseBody
  ];

  @override
  final String wireName = r'CredentialsUpdateResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsUpdateResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credential != null) {
      yield r'credential';
      yield serializers.serialize(
        object.credential,
        specifiedType: const FullType(CredentialsUpdateCredentialResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsUpdateResponseBody object, {
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
    required CredentialsUpdateResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialsUpdateCredentialResponse),
          ) as CredentialsUpdateCredentialResponse;
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
  CredentialsUpdateResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsUpdateResponseBodyBuilder();
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
