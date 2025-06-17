import 'package:ecommerce/app/route_names.dart';
import 'package:ecommerce/product/bloc/product_bloc.dart';
import 'package:ecommerce/product/model/productModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductsMobileview extends StatefulWidget {
  const ProductsMobileview({super.key});

  @override
  State<ProductsMobileview> createState() => _ProductsMobileviewState();
}

class _ProductsMobileviewState extends State<ProductsMobileview> {
  final log = Logger();

  @override
  Widget build(BuildContext context) {
    log.d('ProductsMobileview::build');
    return BlocBuilder<ProductBloc, productstate>(
      builder: (context, productState) {
        if (productState.status == productstatus.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (productState.status == productstatus.success) {
          final products = productState.productlist;
          if (products == null || products.isEmpty) {
            return const Center(
              child: Text('No products available', style: TextStyle(fontSize: 18, color: Colors.grey)),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return _buildProductCard(product);
              },
            ),
          );
        } else if (productState.status == productstatus.failure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text('Error loading products', style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey)),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Trigger reload - replace with your actual reload event
                    // context.read<ProductBloc>().add(LoadProductsEvent());
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }
        return const Center(child: Text('No products found.', style: TextStyle(fontSize: 18, color: Colors.grey)));
      },
    );
  }

  Widget _buildProductCard(ProductModel product) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          // Product Image
          InkWell(
            onTap: () {
              context.pushNamed(RouteNames.productdetail, extra: product);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(height: double.infinity, width: double.infinity, child: _buildProductImage(product)),
            ),
          ),

          Positioned(
            top: 8,
            right: 8,
            child: InkWell(
              onTap: () {
                // Handle favourite toggle
                // context.read<ProductBloc>().add(ToggleFavouriteEvent(product.id));
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.8), shape: BoxShape.circle),
                child: Icon(
                  product.isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: product.isFavourite ? Colors.red : Colors.grey,
                  size: 24,
                ),
              ),
            ),
          ),

          // Product Info
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.name,
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      if (product.discountPrice < product.price) ...[
                        Text(
                          '₹${product.discountPrice.toStringAsFixed(0)}',
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '₹${product.price.toStringAsFixed(0)}',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white70,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ] else ...[
                        Text(
                          '₹${product.price.toStringAsFixed(0)}',
                          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        '${product.rating} (${product.reviews})',
                        style: GoogleFonts.poppins(fontSize: 12, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Stock indicator
          if (product.stock < 10 && product.stock > 0)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Only ${product.stock} left',
                  style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),

          // Out of stock overlay
          if (product.stock == 0)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'OUT OF STOCK',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildProductImage(ProductModel product) {
    // Get the primary image URL
    String? imageUrl = _getPrimaryImageUrl(product);

    // If no valid image URL found, show placeholder
    if (imageUrl == null || imageUrl.isEmpty) {
      return _buildPlaceholderImage();
    }

    // Check if it's a network URL
    if (_isNetworkUrl(imageUrl)) {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        key: ValueKey(imageUrl), // Add key to prevent random regeneration
        placeholder:
            (context, url) =>
                Container(color: Colors.grey[100], child: const Center(child: CircularProgressIndicator())),
        errorWidget: (context, url, error) {
          log.w('Failed to load network image: $imageUrl, Error: $error');
          return _buildPlaceholderImage();
        },
        memCacheWidth: 400, // Optimize memory usage
        memCacheHeight: 400,
      );
    } else {
      // Handle asset images
      return Image.asset(
        imageUrl,
        fit: BoxFit.cover,
        key: ValueKey(imageUrl), // Add key to prevent random regeneration
        errorBuilder: (context, error, stackTrace) {
          log.w('Failed to load asset image: $imageUrl');
          return _buildPlaceholderImage();
        },
      );
    }
  }

  String? _getPrimaryImageUrl(ProductModel product) {
    // Priority order: gallery first, then image array
    if (product.gallery.isNotEmpty) {
      String galleryImage = product.gallery[0];
      if (galleryImage.isNotEmpty) {
        return galleryImage;
      }
    }

    if (product.image.isNotEmpty) {
      String imageUrl = product.image[0];
      if (imageUrl.isNotEmpty) {
        return imageUrl;
      }
    }

    return null;
  }

  bool _isNetworkUrl(String url) {
    return url.startsWith('http://') || url.startsWith('https://');
  }

  Widget _buildPlaceholderImage() {
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.image_not_supported, size: 50, color: Colors.grey),
            SizedBox(height: 8),
            Text('Image not available', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
