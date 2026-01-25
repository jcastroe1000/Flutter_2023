import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teslo_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:teslo_app/features/products/domain/domain.dart';
import 'package:teslo_app/features/products/infra/infra.dart';

final prodcutsRepositoryProvider = Provider<ProductsRepository>((ref) {
  final accessToken = ref.watch(authProvider).user?.token ?? '';
  final productsRepository = ProductsRepositoryImpl(
    ProductsDatasourceImpl(accessToken: accessToken),
  );

  return productsRepository;
});
