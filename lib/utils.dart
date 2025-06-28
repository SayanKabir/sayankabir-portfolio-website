import 'package:web/web.dart' as web;

void launchExternalLink(String url) {
  web.window.open(url, '_blank');
}
