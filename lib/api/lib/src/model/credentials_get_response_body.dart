//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/credentials_get_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_get_response_body.g.dart';

/// The body of a response to a credential get request.
///
/// Properties:
/// * [credential]
@BuiltValue()
abstract class CredentialsGetResponseBody
    implements
        Built<CredentialsGetResponseBody, CredentialsGetResponseBodyBuilder> {
  @BuiltValueField(wireName: r'credential')
  CredentialsGetCredential? get credential;

  CredentialsGetResponseBody._();

  factory CredentialsGetResponseBody(
          [void updates(CredentialsGetResponseBodyBuilder b)]) =
      _$CredentialsGetResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsGetResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsGetResponseBody> get serializer =>
      _$CredentialsGetResponseBodySerializer();
}

class _$CredentialsGetResponseBodySerializer
    implements PrimitiveSerializer<CredentialsGetResponseBody> {
  @override
  final Iterable<Type> types = const [
    CredentialsGetResponseBody,
    _$CredentialsGetResponseBody
  ];

  @override
  final String wireName = r'CredentialsGetResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsGetResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credential != null) {
      yield r'credential';
      yield serializers.serialize(
        object.credential,
        specifiedType: const FullType(CredentialsGetCredential),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsGetResponseBody object, {
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
    required CredentialsGetResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialsGetCredential),
          ) as CredentialsGetCredential;
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
  CredentialsGetResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsGetResponseBodyBuilder();
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
