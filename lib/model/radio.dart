class MyRadio{
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String color;
  final String desc;
  final String url;
  final String category;
  final String icon;
  final String image;
  final String lang;

//<editor-fold desc="Data Methods">

  const MyRadio({
    required this.id,
    required this.order,
    required this.name,
    required this.tagline,
    required this.color,
    required this.desc,
    required this.url,
    required this.category,
    required this.icon,
    required this.image,
    required this.lang,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyRadio &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          order == other.order &&
          name == other.name &&
          tagline == other.tagline &&
          color == other.color &&
          desc == other.desc &&
          url == other.url &&
          category == other.category &&
          icon == other.icon &&
          image == other.image &&
          lang == other.lang);

  @override
  int get hashCode =>
      id.hashCode ^
      order.hashCode ^
      name.hashCode ^
      tagline.hashCode ^
      color.hashCode ^
      desc.hashCode ^
      url.hashCode ^
      category.hashCode ^
      icon.hashCode ^
      image.hashCode ^
      lang.hashCode;

  @override
  String toString() {
    return 'MyRadio{' +
        ' id: $id,' +
        ' order: $order,' +
        ' name: $name,' +
        ' tagline: $tagline,' +
        ' color: $color,' +
        ' desc: $desc,' +
        ' url: $url,' +
        ' category: $category,' +
        ' icon: $icon,' +
        ' image: $image,' +
        ' lang: $lang,' +
        '}';
  }

  MyRadio copyWith({
    int? id,
    int? order,
    String? name,
    String? tagline,
    String? color,
    String? desc,
    String? url,
    String? category,
    String? icon,
    String? image,
    String? lang,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      image: image ?? this.image,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'order': this.order,
      'name': this.name,
      'tagline': this.tagline,
      'color': this.color,
      'desc': this.desc,
      'url': this.url,
      'category': this.category,
      'icon': this.icon,
      'image': this.image,
      'lang': this.lang,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id'] as int,
      order: map['order'] as int,
      name: map['name'] as String,
      tagline: map['tagline'] as String,
      color: map['color'] as String,
      desc: map['desc'] as String,
      url: map['url'] as String,
      category: map['category'] as String,
      icon: map['icon'] as String,
      image: map['image'] as String,
      lang: map['lang'] as String,
    );
  }

//</editor-fold>
}


List<MyRadio> myRadios =const  [
  MyRadio(id: 1, order: 1, name:"92.7", tagline:"Suno Sunao, Life Banao!", color: "0xffa11431", desc: "The chills you get when you listen to music, is mostly caused by the brain releasing dopamine while anticipating the peak moment of a song.", url: "http://sc-bb.1.fm:8017/;", category: "pop", icon:"https://mytuner.global.ssl.fastly.net/media/tvos_radios/m8afyszryaqt.png" , image:"https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b5df4c18876369.562d0d4bd94cf.jpg", lang:"Hindi"),
  MyRadio(id: 2, order: 2, name:"98.3", tagline:"Gaano Ka Sweet Dish", color: "0xff221420", desc:"There are few activities in life that utilizes the entire brain, and music is one of them.", url:  "https://meethimirchihdl-lh.akamaihd.net/i/MeethiMirchiHDLive_1_1@320572/master.m3u8", category: "rock", icon:"https://static.mytuner.mobi/media/tvos_radios/2z69hnevkvam.jpeg" , image:"https://static.toiimg.com/thumb/msid-72350288,width-800,height-600,resizemode-75,imgsize-302210,pt-32,y_pad-40/72350288.jpg", lang:"Hindi"),
  MyRadio(id: 3, order: 3, name:"102", tagline:"Play On!", color: "0xff04080b", desc: "Playing music regularly will physically alter your brain structure.", url: "http://node-14.zeno.fm/cm1fkgbv1ceuv?rj-ttl=5&rj-token=AAABa7Pm__WhrF8jIJ36of_AC5C-TeMcqPiHC5BJB1j1JxkowiWAyQ", category: "hip-hop", icon:"http://db.radioline.fr/pictures/radio_1b34ac132310c975f847aed2a948a318/logo200.jpg?size=200", image:"https://www.theknotnews.com/wp-content/uploads/2017/02/Fifty-Shades-Poster.jpg", lang:"English"),
  MyRadio(id: 4, order: 4, name:"104", tagline:"English Hits", color: "0xff066c53", desc: "", url: "http://108.61.34.50:7094/stream", category: "hip-hop", icon:"https://radiosindia.com/images/foxfm.jpg" , image:"https://images.esc-plus.com/wp-content/uploads/2016/03/Samra_Rahimli.jpg", lang:"English"),
  MyRadio(id: 5, order: 5, name:"95", tagline:"London UK Asian Music", color: "0xff0d487d", desc: "", url: "http://icy-e-01-cr.sharp-stream.com/1458.mp3", category: "jazz", icon:"https://static.radio.net/images/broadcasts/5d/9c/37907/1/c175.png", image:"https://static.radio.net/images/broadcasts/5d/9c/37907/1/c175.png", lang:"English"),
  MyRadio(id: 6, order: 6, name:"94", tagline:"Today's Hits", color:  "0xff27383e", desc:"", url:"http://playerservices.streamtheworld.com/api/livestream-redirect/977_HITS.mp3", category: "rock", icon:"https://static.radio.net/images/broadcasts/8d/76/3600/1/c175.png" , image:"https://i.ytimg.com/vi/BUnPVjqb0YY/maxresdefault.jpg", lang:"English"),
  MyRadio(id: 7, order: 7, name:"93", tagline:"Love Songs", color: "0xffa06a37", desc: "The brain responds to music the same way it responds to something that you eat.", url:  "https://wmirchi-lh.akamaihd.net/i/WMIRCHI_1@75780/index_1_a-p.m3u8?sd=10&rebase=on", category: "pop", icon:"https://mytuner.global.ssl.fastly.net/media/tvos_radios/4evkagl48buu.jpeg", image:"https://i.bollywoodmantra.com/albums/wallpapers/kismat-konnection/shahid-kapur_vidya-balan___34541.jpg", lang:"Hindi"),
  MyRadio(id: 8, order: 8, name:"107", tagline:"Rocking Retro Hits", color: "0xff090909", desc: "Your heartbeat changes to mimics the music you listen to.", url:"https://puranijeanshdliv-lh.akamaihd.net/i/PuraniJeansHDLive_1_1@334555/index_1_a-p.m3u8?sd=10&rebase=on", category: "classic", icon:"https://mytuner.global.ssl.fastly.net/media/tvos_radios/uvclzz6a6d7x.jpeg", image:"https://i.pinimg.com/originals/7f/f6/13/7ff613ed815f1eb56a90794ec64eecfe.jpg", lang:"Hindi"),
] ;

