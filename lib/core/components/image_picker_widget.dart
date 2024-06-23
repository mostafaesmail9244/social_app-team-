import 'dart:io';

import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({
    super.key,
    required this.onTap,
    required this.xFile,
  });
  final void Function()? onTap;
  final File? xFile;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: context.deviceWidth * .35,
          height: context.deviceHeight * .15,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: xFile == null
                        ? const SizedBox()
                        : Image.file(
                            fit: BoxFit.cover,
                            File(xFile!.path),
                          ),
                  ),
                ),
              ),
              if (xFile == null)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(Icons.add_photo_alternate_outlined,
                        size: 25, color: Colors.blue),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
