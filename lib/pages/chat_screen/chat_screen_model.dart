import '/flutter_flow/flutter_flow_util.dart';
import 'chat_screen_widget.dart' show ChatScreenWidget;
import 'package:flutter/material.dart';

class ChatScreenModel extends FlutterFlowModel<ChatScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
