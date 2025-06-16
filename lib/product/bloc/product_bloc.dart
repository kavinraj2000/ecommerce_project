import 'package:bloc/bloc.dart';
import 'package:ecommerce/product/model/productModel.dart';
import 'package:ecommerce/product/repo/prouductrepository.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, productstate> {
  final ProductRepository prodrepo;
  final log = Logger();

  ProductBloc(this.prodrepo) : super(productstate.initial) {
    on<ProductInitialEvent>(_onInitialEvent);
  }
  Future<void> _onInitialEvent(ProductInitialEvent event, Emitter<productstate> emit) async {
    log.i('ProductBloc::_onInitialEvent::$event');
    emit(state.copyWith(status: productstatus.loading));
    try {
      List<ProductModel> productlist = await prodrepo.getproducts();
      log.i('ProductBloc::_onInitialEvent::productlist:$productlist');
      emit(state.copyWith(status: productstatus.success, productlist: productlist));
    } catch (e) {
      emit(state.copyWith(status: productstatus.failure));
    }
  }
}
