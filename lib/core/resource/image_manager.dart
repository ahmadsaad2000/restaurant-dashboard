class AppImageManager {
  static const String _imageBasePath = 'assets/images';

  static String placeholder = '$_imageBasePath/placeholder.png';
  static String DeuxRes = '$_imageBasePath/DeuxRes.png';
  static String res = '$_imageBasePath/res.jpg';
  static String e = '$_imageBasePath/e.png';
  static String eee = '$_imageBasePath/eee.png';
  static String ee = '$_imageBasePath/ee.png';
  static String so = '$_imageBasePath/so.png';
  static String b = '$_imageBasePath/b.png';
  static String p = '$_imageBasePath/p.png';
  static String s = '$_imageBasePath/s.png';

  /// this path is the base path for splash image
  /// pass the splash id to change the image path
  static String splash({String? splashId}) =>
      '$_imageBasePath/splash${splashId != null ? "_$splashId" : ""}.png';
}
