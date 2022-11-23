import 'package:features/editions/widgets/edition_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../homepage/screens/homepage_screen.dart';
import '../../navigation/navigator.dart';
import '../edition_cubit/editions_cubit.dart';

class EditionsListScreen extends StatelessWidget {
  const EditionsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => EditionsListCubit()..getEditions(),
        child: BlocBuilder<EditionsListCubit, EditionsListState>(
          builder: (context, state) {
            if (state is EditionsListInitial ||
                state is EditionsListLoading ||
                state is EditionsListFailure) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            } else if (state is EditionsListLoaded) {
              return ListView(
                children: [
                  ...state.editions
                      .map(
                        (e) => GestureDetector(
                          onTap: () => Navigation.push(
                            const Homepage(),
                            context,
                          ),
                          child: EditionListItem(
                            edition: e,
                          ),
                        ),
                      )
                      .toList(),
                  ...state.editions
                      .map(
                        (e) => GestureDetector(
                          onTap: () => Navigation.push(
                            const Homepage(),
                            context,
                          ),
                          child: EditionListItem(
                            edition: e,
                          ),
                        ),
                      )
                      .toList(),
                  ...state.editions
                      .map(
                        (e) => GestureDetector(
                          onTap: () => Navigation.push(
                            const Homepage(),
                            context,
                          ),
                          child: EditionListItem(
                            edition: e,
                          ),
                        ),
                      )
                      .toList(),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
