import 'package:blocks/blocks.dart';
import 'package:json_annotation/json_annotation.dart';

/// {@template blocks}
/// A [JsonConverter] that supports (de)serializing a `List<InstaBlock>`.
/// {@endtemplate}
class BlocksConverter
    implements JsonConverter<List<InstaBlock>, List<Map<String, dynamic>>> {
  /// {@macro blocks}
  const BlocksConverter();

  @override
  List<InstaBlock> fromJson(List<Map<String, dynamic>> jsonString) {
    return jsonString
        .map((dynamic e) => InstaBlock.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List<Map<String, dynamic>> toJson(List<InstaBlock> blocks) {
    return blocks.map((b) => b.toJson()).toList();
  }
}
