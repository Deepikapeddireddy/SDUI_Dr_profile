import 'package:en_dynamic_ui/middleware/main.dart';
import 'package:en_dynamic_ui/store/app_state.dart';
import 'package:en_dynamic_ui/utils/error.dart';
import 'package:en_dynamic_ui/utils/loading.dart';
import 'package:en_dynamic_ui/utils/redux_model.dart';
import 'package:en_dynamic_ui/widgets/dynamic/en_dynamic_parser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ReduxModel>(
      converter: ((store) => store.state.doctorsListState.list),
      onInit: (store) {
        store.dispatch(getDoctorsList());
      },
      builder: ((context, data) {
        if (data.loading) return const Loading();
        if (data.error != null) return ErrorFeedback(message: '${data.error}');
        return EnDynamicParser(options: EnDynamicJson.fromJson(data.data));
      }),
    );
  }
}
