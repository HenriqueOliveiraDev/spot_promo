import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 1)
class ProductModel {
  @HiveField(0)
  String codSku;
  @HiveField(1)
  String codBu;
  @HiveField(2)
  String desBu;
  @HiveField(3)
  String codSubBu;
  @HiveField(4)
  String desSubBu;
  @HiveField(5)
  String codMarca;
  @HiveField(6)
  String desMarca;
  @HiveField(7)
  String codCategoria;
  @HiveField(8)
  String desCategoria;
  @HiveField(9)
  String codSubCategoria;
  @HiveField(10)
  String desSubCategoria;
  @HiveField(11)
  String desSku;
  @HiveField(12)
  String precoSugerido;
  @HiveField(13)
  String flConcorrente;
  @HiveField(14)
  String urlProduto;

  ProductModel(
      {this.codSku,
      this.codBu,
      this.desBu,
      this.codSubBu,
      this.desSubBu,
      this.codMarca,
      this.desMarca,
      this.codCategoria,
      this.desCategoria,
      this.codSubCategoria,
      this.desSubCategoria,
      this.desSku,
      this.precoSugerido,
      this.flConcorrente,
      this.urlProduto});

  ProductModel.fromJson(Map<String, dynamic> json) {
    codSku = json['codSku'];
    codBu = json['codBu'];
    desBu = json['desBu'];
    codSubBu = json['codSubBu'];
    desSubBu = json['desSubBu'];
    codMarca = json['codMarca'];
    desMarca = json['desMarca'];
    codCategoria = json['codCategoria'];
    desCategoria = json['desCategoria'];
    codSubCategoria = json['codSubCategoria'];
    desSubCategoria = json['desSubCategoria'];
    desSku = json['desSku'];
    precoSugerido = json['precoSugerido'];
    flConcorrente = json['flConcorrente'];
    urlProduto = json['urlProduto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codSku'] = this.codSku;
    data['codBu'] = this.codBu;
    data['desBu'] = this.desBu;
    data['codSubBu'] = this.codSubBu;
    data['desSubBu'] = this.desSubBu;
    data['codMarca'] = this.codMarca;
    data['desMarca'] = this.desMarca;
    data['codCategoria'] = this.codCategoria;
    data['desCategoria'] = this.desCategoria;
    data['codSubCategoria'] = this.codSubCategoria;
    data['desSubCategoria'] = this.desSubCategoria;
    data['desSku'] = this.desSku;
    data['precoSugerido'] = this.precoSugerido;
    data['flConcorrente'] = this.flConcorrente;
    data['urlProduto'] = this.urlProduto;
    return data;
  }
}
