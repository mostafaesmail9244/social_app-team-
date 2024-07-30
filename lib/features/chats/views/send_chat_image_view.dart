import 'dart:io';

import 'package:flutter/material.dart';
import '../../rooms_chat/data/models/room_model/rooms_response.dart';
import 'widgets/chat/chat_text_field.dart';

class SendChatImageView extends StatefulWidget {
  final ({RoomsData room, File image}) chatInfo;
  const SendChatImageView({super.key, required this.chatInfo});

  @override
  State<SendChatImageView> createState() => _SendChatImageViewState();
}

class _SendChatImageViewState extends State<SendChatImageView> {
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
      body: Stack(
        children: [
          InteractiveViewer(
            transformationController: zoomTransformationController,
            maxScale: 5,
            boundaryMargin: EdgeInsets.zero,
            minScale: 1,
            child: Center(
              child: InkWell(
                onDoubleTap: () => _resetZoom(),
                child: Image.file(
                  widget.chatInfo.image,
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ChatTextField(
              room: widget.chatInfo.room,
              image: widget.chatInfo.image,
              isSendImageView: true,
            ),
          ),
        ],
      ),
    );
  }
}
