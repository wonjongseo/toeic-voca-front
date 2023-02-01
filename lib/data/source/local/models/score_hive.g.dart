// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScoreHiveAdapter extends TypeAdapter<ScoreHive> {
  @override
  final int typeId = 11;

  @override
  ScoreHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScoreHive(
      fields[2] as int,
      fields[3] as int,
      fields[0] as int,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ScoreHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.totalCount)
      ..writeByte(1)
      ..write(obj.currectCount)
      ..writeByte(2)
      ..write(obj.day)
      ..writeByte(3)
      ..write(obj.step);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScoreHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
