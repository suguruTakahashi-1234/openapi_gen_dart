//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/credentials_create_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_create_request_body.g.dart';

/// The body of a credential create request.
///
/// Properties:
/// * [credential]
@BuiltValue()
abstract class CredentialsCreateRequestBody
    implements
        Built<CredentialsCreateRequestBody,
            CredentialsCreateRequestBodyBuilder> {
  @BuiltValueField(wireName: r'credential')
  CredentialsCreateCredential? get credential;

  CredentialsCreateRequestBody._();

  factory CredentialsCreateRequestBody(
          [void updates(CredentialsCreateRequestBodyBuilder b)]) =
      _$CredentialsCreateRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsCreateRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsCreateRequestBody> get serializer =>
      _$CredentialsCreateRequestBodySerializer();
}

class _$CredentialsCreateRequestBodySerializer
    implements PrimitiveSerializer<CredentialsCreateRequestBody> {
  @override
  final Iterable<Type> types = const [
    CredentialsCreateRequestBody,
    _$CredentialsCreateRequestBody
  ];

  @override
  final String wireName = r'CredentialsCreateRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsCreateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credential != null) {
      yield r'credential';
      yield serializers.serialize(
        object.credential,
        specifiedType: const FullType(CredentialsCreateCredential),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsCreateRequestBody object, {
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
    required CredentialsCreateRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialsCreateCredential),
          ) as CredentialsCreateCredential;
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
  CredentialsCreateRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsCreateRequestBodyBuilder();
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
