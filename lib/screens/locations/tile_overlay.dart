import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../widgets/location_tile.dart';
import '../../widgets/image_banner.dart';

class TileOverlay extends StatelessWidget {
  final Location location;

  TileOverlay(this.location);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(assetPath: location.imagePath),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
            child: LocationTile(location: location),
          ),
        ]);
  }
}
