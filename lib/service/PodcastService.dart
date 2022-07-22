import 'package:windows/data/BaseBean.dart';
import 'package:windows/service/BaseService.dart';

class PodcastService<Podcast> extends BaseService {
  PodcastService(super.path);

  @override
  BaseBean mapToBean(Map<String, dynamic> map, String key) {
    // TODO: implement mapToBean
    throw UnimplementedError();
  }
}
