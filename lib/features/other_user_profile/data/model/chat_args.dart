import '../../../personal_profile/data/models/profile_response/profile_response.dart';

class ChatArgs {
  final UserData? userData;
  final String name;
  final String id;
  final bool isSearch;

  const ChatArgs({
    this.userData,
    required this.name,
    required this.id,
    required this.isSearch,
  });
}
