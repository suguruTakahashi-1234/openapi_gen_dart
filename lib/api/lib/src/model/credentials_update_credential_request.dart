//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_update_credential_request.g.dart';

/// The credential inside a credential update request.
///
/// Properties:
/// * [uuid] - The UUID of the credential.
/// * [password] - The encrypted password to store.
/// * [passwordSalt] - The salt of the stored password.
/// * [username] - The encrypted username to store.
/// * [usernameSalt] - The salt of the encrypted username.
/// * [websiteUrl] - The URL of the website the credential belongs to.
/// * [websiteUrlSalt] - The WebsiteUrlSalt of the credetial
/// * [note] - A note attached to the credential.
/// * [noteSalt] - The NoteSalt  of the credetial
/// * [displayName] - The display name of the credential..
/// * [displayNameSalt] - The DisplayNameSalt of the credetial
/// * [folderUuid] - The UUID of the folder the credential is in.  Use NULL for no folder.
@BuiltValue()
abstract class CredentialsUpdateCredentialRequest
    implements
        Built<CredentialsUpdateCredentialRequest,
            CredentialsUpdateCredentialRequestBuilder> {
  /// The UUID of the credential.
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// The encrypted password to store.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// The salt of the stored password.
  @BuiltValueField(wireName: r'passwordSalt')
  String? get passwordSalt;

  /// The encrypted username to store.
  @BuiltValueField(wireName: r'username')
  String? get username;

  /// The salt of the encrypted username.
  @BuiltValueField(wireName: r'usernameSalt')
  String? get usernameSalt;

  /// The URL of the website the credential belongs to.
  @BuiltValueField(wireName: r'websiteUrl')
  String? get websiteUrl;

  /// The WebsiteUrlSalt of the credetial
  @BuiltValueField(wireName: r'websiteUrlSalt')
  String? get websiteUrlSalt;

  /// A note attached to the credential.
  @BuiltValueField(wireName: r'note')
  String? get note;

  /// The NoteSalt  of the credetial
  @BuiltValueField(wireName: r'noteSalt')
  String? get noteSalt;

  /// The display name of the credential..
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  /// The DisplayNameSalt of the credetial
  @BuiltValueField(wireName: r'displayNameSalt')
  String? get displayNameSalt;

  /// The UUID of the folder the credential is in.  Use NULL for no folder.
  @BuiltValueField(wireName: r'folderUuid')
  String? get folderUuid;

  CredentialsUpdateCredentialRequest._();

  factory CredentialsUpdateCredentialRequest(
          [void updates(CredentialsUpdateCredentialRequestBuilder b)]) =
      _$CredentialsUpdateCredentialRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsUpdateCredentialRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsUpdateCredentialRequest> get serializer =>
      _$CredentialsUpdateCredentialRequestSerializer();
}

class _$CredentialsUpdateCredentialRequestSerializer
    implements PrimitiveSerializer<CredentialsUpdateCredentialRequest> {
  @override
  final Iterable<Type> types = const [
    CredentialsUpdateCredentialRequest,
    _$CredentialsUpdateCredentialRequest
  ];

  @override
  final String wireName = r'CredentialsUpdateCredentialRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsUpdateCredentialRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.passwordSalt != null) {
      yield r'passwordSalt';
      yield serializers.serialize(
        object.passwordSalt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.usernameSalt != null) {
      yield r'usernameSalt';
      yield serializers.serialize(
        object.usernameSalt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.websiteUrl != null) {
      yield r'websiteUrl';
      yield serializers.serialize(
        object.websiteUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.websiteUrlSalt != null) {
      yield r'websiteUrlSalt';
      yield serializers.serialize(
        object.websiteUrlSalt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.noteSalt != null) {
      yield r'noteSalt';
      yield serializers.serialize(
        object.noteSalt,
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
    if (object.displayNameSalt != null) {
      yield r'displayNameSalt';
      yield serializers.serialize(
        object.displayNameSalt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.folderUuid != null) {
      yield r'folderUuid';
      yield serializers.serialize(
        object.folderUuid,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsUpdateCredentialRequest object, {
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
    required CredentialsUpdateCredentialRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uuid = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'passwordSalt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.passwordSalt = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'usernameSalt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.usernameSalt = valueDes;
          break;
        case r'websiteUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.websiteUrl = valueDes;
          break;
        case r'websiteUrlSalt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.websiteUrlSalt = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'noteSalt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.noteSalt = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'displayNameSalt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayNameSalt = valueDes;
          break;
        case r'folderUuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folderUuid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialsUpdateCredentialRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsUpdateCredentialRequestBuilder();
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
