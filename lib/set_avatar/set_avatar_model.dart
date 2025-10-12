import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'set_avatar_widget.dart' show SetAvatarWidget;
import 'package:flutter/material.dart';

class SetAvatarModel extends FlutterFlowModel<SetAvatarWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - choosePhoto] action in Button widget.
  FFUploadedFile? outputUploadedPhoto;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<BarbersWithServicesRow>? outputBarberProfile;
  // Stores action output result for [Custom Action - deleteSupabaseFileViaFunction] action in Button widget.
  bool? outputPicDeleteActon;
  bool isDataUploading_uploadDataGhc = false;
  FFUploadedFile uploadedLocalFile_uploadDataGhc =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataGhc = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
