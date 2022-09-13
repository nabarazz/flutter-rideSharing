import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ridesharingv1/core/base_state/base_state.dart';
import 'package:ridesharingv1/features/application/ride_sharing_controller.dart';

final _requestListController = StateNotifierProvider<AuthController, BaseState>(
  authController,
);

class NotificationScreen extends ConsumerStatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState extends ConsumerState<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(_requestListController.notifier).getRequestList();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(_requestListController);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Notification'),
      ),
      body: state.maybeMap(
          loading: (_) => const CircularProgressIndicator(),
          success: (state) {
            final requestListResponse = state;
            final data = requestListResponse.data;
            return null;

            // return ListView.separated(
            //   itemCount: data.,
            //   itemBuilder: itemBuilder,
            //   separatorBuilder: separatorBuilder,

            // );
          },
          orElse: () {
            return null;
          }),
    );
  }
}
