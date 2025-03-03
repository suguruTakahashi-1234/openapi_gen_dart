//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/users_update_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_update_request_body.g.dart';

/// Body of a user update request.
///
/// Properties:
/// * [user]
@BuiltValue()
abstract class UsersUpdateRequestBody
    implements Built<UsersUpdateRequestBody, UsersUpdateRequestBodyBuilder> {
  @BuiltValueField(wireName: r'user')
  UsersUpdateUser? get user;

  UsersUpdateRequestBody._();

  factory UsersUpdateRequestBody(
          [void updates(UsersUpdateRequestBodyBuilder b)]) =
      _$UsersUpdateRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersUpdateRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersUpdateRequestBody> get serializer =>
      _$UsersUpdateRequestBodySerializer();
}

class _$UsersUpdateRequestBodySerializer
    implements PrimitiveSerializer<UsersUpdateRequestBody> {
  @override
  final Iterable<Type> types = const [
    UsersUpdateRequestBody,
    _$UsersUpdateRequestBody
  ];

  @override
  final String wireName = r'UsersUpdateRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersUpdateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(UsersUpdateUser),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersUpdateRequestBody object, {
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
    required UsersUpdateRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersUpdateUser),
          ) as UsersUpdateUser;
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
  UsersUpdateRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersUpdateRequestBodyBuilder();
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
