//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/users_get_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_get_response_body.g.dart';

/// Response body of a user get request.
///
/// Properties:
/// * [user]
@BuiltValue()
abstract class UsersGetResponseBody
    implements Built<UsersGetResponseBody, UsersGetResponseBodyBuilder> {
  @BuiltValueField(wireName: r'user')
  UsersGetUser? get user;

  UsersGetResponseBody._();

  factory UsersGetResponseBody([void updates(UsersGetResponseBodyBuilder b)]) =
      _$UsersGetResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersGetResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersGetResponseBody> get serializer =>
      _$UsersGetResponseBodySerializer();
}

class _$UsersGetResponseBodySerializer
    implements PrimitiveSerializer<UsersGetResponseBody> {
  @override
  final Iterable<Type> types = const [
    UsersGetResponseBody,
    _$UsersGetResponseBody
  ];

  @override
  final String wireName = r'UsersGetResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersGetResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(UsersGetUser),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersGetResponseBody object, {
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
    required UsersGetResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersGetUser),
          ) as UsersGetUser;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersGetResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersGetResponseBodyBuilder();
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
