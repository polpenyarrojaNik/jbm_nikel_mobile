import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_list_params.freezed.dart';

@freezed
class DefaultListParams with _$DefaultListParams {
  const DefaultListParams._();
  const factory DefaultListParams({
    required int page,
    required String searchText,
  }) = _DefaultListParams;
}
