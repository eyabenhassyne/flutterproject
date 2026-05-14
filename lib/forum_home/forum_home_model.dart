import '/flutter_flow/flutter_flow_util.dart';
import 'forum_home_widget.dart' show ForumHomeWidget;
import 'package:flutter/material.dart';

class ForumHomeModel extends FlutterFlowModel<ForumHomeWidget> {
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;

  String selectedCategory = 'Tous';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
