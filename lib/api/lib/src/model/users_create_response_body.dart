//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_create_response_body.g.dart';

/// Body of a response to a user create request.
///
/// Properties:
/// * [token] - The token that can be used for authentication.
/// * [expiresInSeconds] - The time in seconds the token expires in.
@BuiltValue()
abstract class UsersCreateResponseBody
    implements Built<UsersCreateResponseBody, UsersCreateResponseBodyBuilder> {
  /// The token that can be used for authentication.
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// The time in seconds the token expires in.
  @BuiltValueField(wireName: r'expiresInSeconds')
  int? get expiresInSeconds;

  UsersCreateResponseBody._();

  factory UsersCreateResponseBody(
          [void updates(UsersCreateResponseBodyBuilder b)]) =
      _$UsersCreateResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersCreateResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersCreateResponseBody> get serializer =>
      _$UsersCreateResponseBodySerializer();
}

class _$UsersCreateResponseBodySerializer
    implements PrimitiveSerializer<UsersCreateResponseBody> {
  @override
  final Iterable<Type> types = const [
    UsersCreateResponseBody,
    _$UsersCreateResponseBody
  ];

  @override
  final String wireName = r'UsersCreateResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersCreateResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.expiresInSeconds != null) {
      yield r'expiresInSeconds';
      yield serializers.serialize(
        object.expiresInSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersCreateResponseBody object, {
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
    required UsersCreateResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'expiresInSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresInSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersCreateResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersCreateResponseBodyBuilder();
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
