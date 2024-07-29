import 'package:flutter/material.dart';
import 'package:social_app/core/shared/widgets/custom_cached_image.dart';

class ImageDetails extends StatefulWidget {
  final String image;
  const ImageDetails({super.key, required this.image});

  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  final zoomTransformationController = TransformationController();
  @override
  void dispose() {
    super.dispose();
    zoomTransformationController.dispose();
  }

  void _resetZoom() {
    zoomTransformationController.value = Matrix4.identity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: InteractiveViewer(
          transformationController: zoomTransformationController,
          maxScale: 5,
          boundaryMargin: EdgeInsets.zero,
          minScale: 1,

          /// resize the image to fit the screen
          child: InkWell(
            onDoubleTap: () => _resetZoom(),
            child: CustomCachedNetworkImage(
              imageUrl: widget.image,
              radius: 8,
              height: double.maxFinite,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
