import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details_page_widget.dart' show DetailsPageWidget;
import 'package:flutter/material.dart';

class DetailsPageModel extends FlutterFlowModel<DetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? orderRecordId;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? orderRecord;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? orderId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
