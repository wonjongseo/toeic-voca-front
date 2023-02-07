// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabularyList.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VocabularyListAdapter extends TypeAdapter<VocabularyList> {
  @override
  final int typeId = 13;

  @override
  VocabularyList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VocabularyList(
      vocas: (fields[0] as List).cast<Vocabulary>(),
      scores: (fields[1] as List).cast<ScoreHive>(),
    );
  }

  @override
  void write(BinaryWriter writer, VocabularyList obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.vocas)
      ..writeByte(1)
      ..write(obj.scores);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VocabularyListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
