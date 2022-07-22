import 'package:windows/data/BaseBean.dart';

import 'Host.dart';

class Podcast extends BaseBean {
  String? name,
      description,
      iconURL,
      youtubeId,
      uploads,
      cuts,
      notificationIcon,
      cover,
      highlightColor,
      slogan;

  Podcast(
      {id,
      this.name,
      this.description,
      this.iconURL,
      this.youtubeId,
      this.uploads,
      this.cuts,
      this.notificationIcon,
      this.cover,
      this.highlightColor,
      this.slogan,
      this.views,
      this.subscribe,
      this.hosts,
      this.weeklyGuests})
      : super(id);

  int? views, subscribe;
  List<Host>? hosts, weeklyGuests;

  @override
  Podcast fromMap(Map<String, dynamic> map, String key) {
    print("mapping snapshot($key) ->  $map");
    return Podcast(
      name: map['name'] as String,
      description: map['description'] as String,
      iconURL: map['iconURL'] as String,
      youtubeId: map['youtubeId'] as String,
      uploads: map['uploads'] as String,
      cuts: map['cuts'] as String,
      notificationIcon: map['notificationIcon'] as String,
      cover: map['cover'] as String,
      highlightColor: map['highlightColor'] as String,
      slogan: map['slogan'] as String,
      views: map['views'] as int,
      subscribe: map['subscribe'] as int,
      hosts: map['hosts'] as List<Host>,
      weeklyGuests: map['weeklyGuests'] as List<Host>,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'description': this.description,
      'iconURL': this.iconURL,
      'youtubeId': this.youtubeId,
      'uploads': this.uploads,
      'cuts': this.cuts,
      'notificationIcon': this.notificationIcon,
      'cover': this.cover,
      'highlightColor': this.highlightColor,
      'slogan': this.slogan,
      'views': this.views,
      'subscribe': this.subscribe,
      'hosts': this.hosts,
      'weeklyGuests': this.weeklyGuests,
    };
  }
}
