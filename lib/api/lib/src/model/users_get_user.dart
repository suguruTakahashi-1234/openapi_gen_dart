//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_get_user.g.dart';

/// User requested.
///
/// Properties:
/// * [displayName] - The display name of the user.
@BuiltValue()
abstract class UsersGetUser
    implements Built<UsersGetUser, UsersGetUserBuilder> {
  /// The display name of the user.
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  UsersGetUser._();

  factory UsersGetUser([void updates(UsersGetUserBuilder b)]) = _$UsersGetUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersGetUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersGetUser> get serializer => _$UsersGetUserSerializer();
}

class _$UsersGetUserSerializer implements PrimitiveSerializer<UsersGetUser> {
  @override
  final Iterable<Type> types = const [UsersGetUser, _$UsersGetUser];

  @override
  final String wireName = r'UsersGetUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersGetUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersGetUser object, {
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
    required UsersGetUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersGetUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersGetUserBuilder();
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
