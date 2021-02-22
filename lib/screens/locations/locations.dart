import 'package:basics/main.dart';
import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';
import 'tile_overlay.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Tourism & Co.'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, locations[index]),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {'id': locationID});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
        onTap: () => _onLocationTap(context, location.id),
        child: Container(
          child: Stack(
            children: [
              ImageBanner(assetPath: location.imagePath, height: 245.0),
              TileOverlay(location),
            ],
          ),
        ));
  }
}
