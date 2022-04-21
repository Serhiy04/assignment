import 'package:assignment/src/cubit/base_cubit/base_state.dart';
import 'package:assignment/src/cubit/versions_cubit/versions_cubit.dart';
import 'package:assignment/src/models/responses/versions_response_model/versions_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VersionsDialog extends StatelessWidget {
  const VersionsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.center,
      content: BlocBuilder<VersionsCubit, BaseState>(
        builder: (context, state) {
          if (state is SuccessModelState<VersionsResponseModel>) {
            final versions = state.model.versions;
            return _buildContent(
              content: [
                const Text('Versions:'),
                if (versions != null)
                  ...versions
                      .map((version) => Text(version ?? 'Unknown'))
                      .toList(),
              ],
            );
          } else if (state is LoadingState) {
            return _buildContent(
              content: [
                const CircularProgressIndicator(),
              ],
            );
          } else if (state is ErrorState) {
            return _buildContent(
              content: [
                Text(state.error),
              ],
            );
          }
          return _buildContent(
            content: [
              const SizedBox(),
            ],
          );
        },
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    );
  }

  Widget _buildContent({required List<Widget> content}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: content,
    );
  }
}
