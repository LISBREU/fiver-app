import '/flutter_flow/flutter_flow_util.dart';
import 'orders_list_widget.dart' show OrdersListWidget;
import 'package:flutter/material.dart';

class OrdersListModel extends FlutterFlowModel<OrdersListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
