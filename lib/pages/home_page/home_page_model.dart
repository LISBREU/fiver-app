import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputSearch widget.
  FocusNode? inputSearchFocusNode;
  TextEditingController? inputSearchController;
  String? Function(BuildContext, String?)? inputSearchControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputSearchFocusNode?.dispose();
    inputSearchController?.dispose();
  }
}
