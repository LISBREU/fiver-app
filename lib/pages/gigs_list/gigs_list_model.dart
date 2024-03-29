import '/flutter_flow/flutter_flow_util.dart';
import 'gigs_list_widget.dart' show GigsListWidget;
import 'package:flutter/material.dart';

class GigsListModel extends FlutterFlowModel<GigsListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
