//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_update_user.g.dart';

/// User update request user.
///
/// Properties:
/// * [userName] - The username of the user to be updated.
/// * [displayName] - The new display name of the user.
@BuiltValue()
abstract class UsersUpdateUser
    implements Built<UsersUpdateUser, UsersUpdateUserBuilder> {
  /// The username of the user to be updated.
  @BuiltValueField(wireName: r'userName')
  String? get userName;

  /// The new display name of the user.
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  UsersUpdateUser._();

  factory UsersUpdateUser([void updates(UsersUpdateUserBuilder b)]) =
      _$UsersUpdateUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersUpdateUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersUpdateUser> get serializer =>
      _$UsersUpdateUserSerializer();
}

class _$UsersUpdateUserSerializer
    implements PrimitiveSerializer<UsersUpdateUser> {
  @override
  final Iterable<Type> types = const [UsersUpdateUser, _$UsersUpdateUser];

  @override
  final String wireName = r'UsersUpdateUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersUpdateUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    UsersUpdateUser object, {
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
    required UsersUpdateUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
          break;
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
  UsersUpdateUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersUpdateUserBuilder();
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
