// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voca.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VocaAdapter extends TypeAdapter<Voca> {
  @override
  final int typeId = 1;

  @override
  Voca read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Voca(
      id: fields[3] as String,
      voca: fields[0] as String,
      mean: fields[2] as String,
    )
      ..isCorrect = fields[4] as bool
      ..isLike = fields[5] as bool;
  }

  @override
  void write(BinaryWriter writer, Voca obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.voca)
      ..writeByte(2)
      ..write(obj.mean)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.isCorrect)
      ..writeByte(5)
      ..write(obj.isLike);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VocaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
