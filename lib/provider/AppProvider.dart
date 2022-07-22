import 'package:flutter/cupertino.dart';
import 'package:windows/service/PodcastService.dart';

class AppProvider extends ChangeNotifier {
  PodcastService service = PodcastService('Podcasts');
}
