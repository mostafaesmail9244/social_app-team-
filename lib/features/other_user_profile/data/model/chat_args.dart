import '../../../personal_profile/data/models/profile_response/profile_response.dart';

class ChatArgs {
  final UserData? userData;
  final String? id;
  final String? name;
  final String? img;

  const ChatArgs({
    this.userData,
    this.id,
    this.name,
    this.img,
  });
}
