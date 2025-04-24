import 'package:flutter/material.dart';
import 'package:blinkit_clone/widgets/app_bar_widget.dart';
import 'package:blinkit_clone/widgets/category_list.dart';
import 'package:blinkit_clone/widgets/banner_carousel.dart';
import 'package:blinkit_clone/widgets/product_grid.dart';
import 'package:blinkit_clone/widgets/bottom_nav_bar.dart';
import 'package:blinkit_clone/models/product.dart';
import 'package:blinkit_clone/models/theme_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> filteredProducts = dummyProducts;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterProducts);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterProducts() {
    if (_searchController.text.isEmpty) {
      setState(() {
        filteredProducts = dummyProducts;
      });
    } else {
      setState(() {
        filteredProducts = dummyProducts
            .where((product) => product.name
            .toLowerCase()
            .contains(_searchController.text.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeModel = Provider.of<ThemeModel>(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBarWidget(
          searchController: _searchController,
          onThemeToggle: () {
            themeModel.toggleTheme();
          },
          isDarkMode: themeModel.isDarkMode,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Simulate refresh
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CategoryList(),
              const SizedBox(height: 16),
              const BannerCarousel(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Recommended for you',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ProductGrid(products: filteredProducts),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
