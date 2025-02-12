import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/loading_indacator.dart';
import 'package:bookly_app/features/search/manager/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                onSubmitted: (data) {
                  BlocProvider.of<SearchCubit>(context)
                      .fetchSearchResult(subject: data);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: buildSearchContent(state),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildSearchContent(SearchState state) {
    if (state is SearchSuccess) {
      return SearchResultListView(bookModel: state.books);
    } else if (state is SearchFailure) {
      return CustomErrorMessage(errorMessage: state.errorMessage);
    } else if (state is SearchLoading) {
      return const CustomLoadingIndicator();
    } else {
      return const Center(
        child: Text('Enter a search term to find books'),
      );
    }
  }
}
