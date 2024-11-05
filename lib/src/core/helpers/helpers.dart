import 'package:url_launcher/url_launcher.dart';

void navigateToEmailApp(String mail) async {
  final params = Uri(
    scheme: 'mailto',
    path: mail,
  );
  await launchUrl(params, mode: LaunchMode.externalApplication);
}

void openPhoneCall(String phone) async {
  final params = Uri(
    scheme: 'tel',
    path: phone,
  );
  await launchUrl(params, mode: LaunchMode.externalApplication);
}
