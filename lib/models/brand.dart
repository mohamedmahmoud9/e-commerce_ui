
import 'package:flutter/cupertino.dart';

enum Brand{
  Sony,JBL,Beats,Sennheiser
}

class BrandImage  with ChangeNotifier{
 final Brand brand;
  final imageUrl;
  BrandImage({
   @required this.brand,
    @required this.imageUrl,
  });
}

