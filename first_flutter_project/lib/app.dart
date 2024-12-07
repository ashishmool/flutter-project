import 'package:first_flutter_project/common/student_details_view.dart';
import 'package:first_flutter_project/common/student_output_view.dart';
import 'package:first_flutter_project/model/student.dart';
import 'package:first_flutter_project/view/boxfit_fill.dart';
import 'package:first_flutter_project/view/column_view.dart';
import 'package:first_flutter_project/view/container_view.dart';
import 'package:first_flutter_project/view/cross_axis_view.dart';
import 'package:first_flutter_project/view/flexible_expanded_view.dart';
import 'package:first_flutter_project/view/load_image_view.dart';
import 'package:first_flutter_project/view/my_classwork_view.dart';
import 'package:first_flutter_project/view/rich_text_view.dart';
import 'package:first_flutter_project/view/student_list_view.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_project/view/dashboard_view.dart';
import 'package:first_flutter_project/view/arithmetic_form_view.dart';
import 'package:first_flutter_project/view/area_circle_view.dart';
import 'package:first_flutter_project/view/simple_interest_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Initial Route
      routes: {
        '/': (context) => const DashboardScreen(), // Dashboard View
        '/column_view': (context) => const ColumnView(),
        '/student_details_view': (context) => const StudentDetailsView(),
        '/output': (context) => const StudentOutputView(),
        '/cross_axis_view': (context) => const CrossAxisView(),
        '/rich_text_view': (context) => const RichTextView(),
        '/container_view': (context) => const ContainerView(),
        '/load_image_view': (context) => const LoadImageView(),
        '/boxfill_view': (context) => const BoxFillView(),
        '/flexible_expanded_view': (context) => const FlexibleExpanded(),
        // '/snackbar_view': (context) => const SnackbarView(),
        '/my_classwork_view': (context) => const MyClassworkView(),

        '/arithmetic': (context) =>
            const ArithmeticFormView(), // Arithmetic View
        '/simple_interest': (context) =>
            const SimpleInterestView(), // Simple Interest View
        '/area_circle': (context) => const AreaCircleView(), // Area Circle View
      },
    );
  }
}
