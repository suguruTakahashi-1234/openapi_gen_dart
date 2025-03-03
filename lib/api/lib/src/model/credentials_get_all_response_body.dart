//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:petstore_api/src/model/credentials_get_all_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_get_all_response_body.g.dart';

/// Response to a get all credentials request.
///
/// Properties:
/// * [credentials] - A list of credentials associated with the user.
@BuiltValue()
abstract class CredentialsGetAllResponseBody
    implements
        Built<CredentialsGetAllResponseBody,
            CredentialsGetAllResponseBodyBuilder> {
  /// A list of credentials associated with the user.
  @BuiltValueField(wireName: r'credentials')
  BuiltList<CredentialsGetAllCredential>? get credentials;

  CredentialsGetAllResponseBody._();

  factory CredentialsGetAllResponseBody(
          [void updates(CredentialsGetAllResponseBodyBuilder b)]) =
      _$CredentialsGetAllResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsGetAllResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsGetAllResponseBody> get serializer =>
      _$CredentialsGetAllResponseBodySerializer();
}

class _$CredentialsGetAllResponseBodySerializer
    implements PrimitiveSerializer<CredentialsGetAllResponseBody> {
  @override
  final Iterable<Type> types = const [
    CredentialsGetAllResponseBody,
    _$CredentialsGetAllResponseBody
  ];

  @override
  final String wireName = r'CredentialsGetAllResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsGetAllResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credentials != null) {
      yield r'credentials';
      yield serializers.serialize(
        object.credentials,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(CredentialsGetAllCredential)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsGetAllResponseBody object, {
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
    required CredentialsGetAllResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credentials':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(CredentialsGetAllCredential)]),
          ) as BuiltList<CredentialsGetAllCredential>?;
          if (valueDes == null) continue;
          result.credentials.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialsGetAllResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsGetAllResponseBodyBuilder();
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
