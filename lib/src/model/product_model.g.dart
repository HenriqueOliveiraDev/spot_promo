// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 1;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      codSku: fields[0] as String,
      codBu: fields[1] as String,
      desBu: fields[2] as String,
      codSubBu: fields[3] as String,
      desSubBu: fields[4] as String,
      codMarca: fields[5] as String,
      desMarca: fields[6] as String,
      codCategoria: fields[7] as String,
      desCategoria: fields[8] as String,
      codSubCategoria: fields[9] as String,
      desSubCategoria: fields[10] as String,
      desSku: fields[11] as String,
      precoSugerido: fields[12] as String,
      flConcorrente: fields[13] as String,
      urlProduto: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.codSku)
      ..writeByte(1)
      ..write(obj.codBu)
      ..writeByte(2)
      ..write(obj.desBu)
      ..writeByte(3)
      ..write(obj.codSubBu)
      ..writeByte(4)
      ..write(obj.desSubBu)
      ..writeByte(5)
      ..write(obj.codMarca)
      ..writeByte(6)
      ..write(obj.desMarca)
      ..writeByte(7)
      ..write(obj.codCategoria)
      ..writeByte(8)
      ..write(obj.desCategoria)
      ..writeByte(9)
      ..write(obj.codSubCategoria)
      ..writeByte(10)
      ..write(obj.desSubCategoria)
      ..writeByte(11)
      ..write(obj.desSku)
      ..writeByte(12)
      ..write(obj.precoSugerido)
      ..writeByte(13)
      ..write(obj.flConcorrente)
      ..writeByte(14)
      ..write(obj.urlProduto);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
