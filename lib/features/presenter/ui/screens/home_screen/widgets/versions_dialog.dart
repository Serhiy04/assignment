import 'package:assignment/features/domain/entities/responses/versions_response_entity/versions_response_entity.dart';
import 'package:assignment/features/presenter/cubit/base_cubit/base_state.dart';
import 'package:assignment/features/presenter/cubit/versions_cubit/versions_cubit.dart';
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
          if (state is SuccessModelState<VersionsResponseEntity>) {
            final versions = state.model.versions;
            return _buildContent(
              content: [
                const Text('Versions:'),
                ...versions.map((version) => Text(version)).toList(),
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
