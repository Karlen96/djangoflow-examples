import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

// Global APP - specific constants
const kSentryDSN = '';
const kAppLogoPath = 'assets/app_logo/logo.png';
const kVapidKey = '';
const kLiveBasePath = r'https://api.djangoflow.com';
const kSandboxBasePath = r'http://127.0.0.1:8000';
const kCodeResendDuration = 60;
const kAppTitle = 'DFChat';

/// 0 is the default user id, backend will find the correct user from jwt token
const kDefaultUserId = '0';
const kAnonymousUserId = '__anonymous__';
const kAnonymousUserName = 'Anonymous';
const kAnonymousChatUser = types.User(
  id: kAnonymousUserId,
  firstName: kAnonymousUserName,
  imageUrl: '',
);
