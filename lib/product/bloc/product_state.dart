part of 'product_bloc.dart';

enum productstatus { initial, loading, success, failure }

class productstate extends Equatable {
  final productstatus status;
  final List<ProductModel> productlist;
  final bool isclicked;

  const productstate({this.status = productstatus.initial, this.productlist = const [], this.isclicked = false});

  static final initial = productstate(status: productstatus.initial, productlist: const [], isclicked: false);
  productstate copyWith({productstatus? status, List<ProductModel>? productlist, bool? isclicked}) {
    return productstate(
      status: status ?? this.status,
      productlist: productlist ?? this.productlist,
      isclicked: isclicked ?? this.isclicked,
    );
  }

  @override
  List<Object?> get props => [status, productlist, isclicked];
}
