import 'package:flutter/material.dart';
import 'package:grepvideo/core/app_colors.dart';
import 'package:grepvideo/core/app_text_styles.dart';
import 'package:grepvideo/core/responsive_size.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> _productImages = [
    'images/cloth.png',
    'images/cloth.png',
    'images/cloth.png',
    'images/cloth.png',
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Image.asset('images/tags.png', width: 80, height: 32),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          12.kwidthbox,
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 288,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: _productImages.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        _productImages[index],
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.neutral200),
                    ),
                    child: Text(
                      'View Similar',
                      style: AppTextStyles.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            12.kheightbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_productImages.length, (index) {
                final bool isActive = index == _currentPage;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: isActive ? 18 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: isActive ? AppColors.black : AppColors.neutral200,
                    borderRadius: BorderRadius.circular(99),
                  ),
                );
              }),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'H&M',
                            style: AppTextStyles.openSans(
                              fontSize: 16,
                              height: 1.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          4.kwidthbox,
                          Text(
                            'Sweatshirt Arm Hoodie',
                            style: AppTextStyles.openSans(
                              fontSize: 12,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: AppColors.whiteGrey100,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: AppColors.black,
                                      ),

                                      Text(
                                        '4.5',
                                        style: AppTextStyles.openSans(
                                          fontSize: 12,
                                          height: 1.5,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      6.kwidthbox,
                                    ],
                                  ),
                                ),

                                Container(
                                  color: AppColors.neutral200,
                                  height: 20,
                                  width: 1,
                                ),
                                6.kwidthbox,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6,
                                  ),
                                  child: Text(
                                    '1.3k',
                                    style: AppTextStyles.openSans(
                                      fontSize: 12,
                                      height: 1.5,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  6.kheightbox,

                  Row(
                    children: [
                      Text(
                        r'$50.99',
                        style: AppTextStyles.openSans(
                          fontSize: 16,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      4.kwidthbox,
                      Text(
                        r'$75.99',
                        style: AppTextStyles.openSans(
                          fontSize: 12,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  16.kheightbox,
                  Row(
                    children: [
                      productSample(true),
                      6.kwidthbox,
                      productSample(false),
                      6.kwidthbox,
                      productSample(false),
                    ],
                  ),
                  16.kheightbox,
                  Text(
                    'Select Size',
                    style: AppTextStyles.openSans(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  16.kheightbox,
                  Row(
                    children: [
                      sizeContainer(true, 'S'),
                      6.kwidthbox,
                      sizeContainer(false, 'M'),
                      6.kwidthbox,
                      sizeContainer(false, 'L'),
                      6.kwidthbox,
                      sizeContainer(false, 'XL'),
                    ],
                  ),
                  16.kheightbox,
                  Container(
                    width: double.infinity,

                    padding: EdgeInsets.only(
                      left: 52,
                      right: 8,
                      top: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.green100,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.green, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  r'Get at $30.89',
                                  style: AppTextStyles.openSans(
                                    fontSize: 14,
                                    height: 1.5,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                6.kheightbox,
                                Text(
                                  'With coupon + Bank offers',
                                  style: AppTextStyles.openSans(
                                    fontSize: 12,
                                    height: 1.5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.green,
                                    AppColors.green.withOpacity(0.5),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                r'Extra $3 off',
                                style: AppTextStyles.openSans(
                                  fontSize: 12,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  16.kheightbox,
                  Text(
                    'Seller Details',
                    style: AppTextStyles.openSans(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  4.kheightbox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundImage: const AssetImage(
                              'images/user.jpg',
                            ),
                          ),
                          6.kwidthbox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jenny Smith',
                                style: AppTextStyles.openSans(
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'johnsmith@',
                                style: AppTextStyles.openSans(
                                  fontSize: 14,
                                  height: 1.5,
                                  color: AppColors.neutral600,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.red100,
                          borderRadius: BorderRadius.circular(38),
                        ),
                        child: Text(
                          'Follow',
                          style: AppTextStyles.openSans(
                            fontSize: 12,
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                            color: AppColors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  16.kheightbox,
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.whiteGrey100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        reaction(Icons.favorite, '42k', AppColors.red),
                        reaction(Icons.message, '1k', AppColors.neutral600),
                        reaction(
                          Icons.share_outlined,
                          '1k',
                          AppColors.neutral600,
                        ),
                        reaction(Icons.favorite, '42k', AppColors.red),
                      ],
                    ),
                  ),
                  16.kheightbox,
                  Text(
                    'Description',
                    style: AppTextStyles.openSans(
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  4.kheightbox,
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: AppTextStyles.openSans(
                      fontSize: 12,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  16.kheightbox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            size: 24,
                            color: AppColors.neutral600,
                          ),
                          8.kwidthbox,
                          Icon(
                            Icons.share_outlined,
                            size: 24,
                            color: AppColors.neutral600,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.neutral900,
                          padding: EdgeInsets.all(16),
                          minimumSize: Size(251, 38),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: AppColors.white,
                            ),
                            4.kwidthbox,
                            Text(
                              'Add to Cart',
                              style: AppTextStyles.openSans(
                                fontSize: 14,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  16.kheightbox,
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.blue100,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Delivery',
                              style: AppTextStyles.openSans(
                                fontSize: 16,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.fire_truck,
                                    size: 14,
                                    color: AppColors.black,
                                  ),
                                  4.kwidthbox,
                                  Text(
                                    'STANDARD',
                                    style: AppTextStyles.openSans(
                                      fontSize: 12,
                                      height: 1.5,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.neutral700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        16.kheightbox,
                        RichText(
                          text: TextSpan(
                            style: AppTextStyles.openSans(
                              fontSize: 12,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutral700,
                            ),
                            children: [
                              TextSpan(
                                text: 'Delivery by ',
                                style: AppTextStyles.openSans(
                                  fontSize: 12,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.neutral500,
                                ),
                              ),
                              TextSpan(
                                text: '21 Feb.',
                                style: AppTextStyles.openSans(
                                  fontSize: 12,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        4.kheightbox,
                        Text(
                          'The final delivery date will depends on the items in you bag',
                          style: AppTextStyles.openSans(
                            fontSize: 12,
                            height: 1.5,
                            color: AppColors.neutral500,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        8.kheightbox,
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 14,
                              color: AppColors.neutral500,
                            ),
                            4.kwidthbox,
                            Text(
                              'Expected Delivery 21 Feb',
                              style: AppTextStyles.openSans(
                                fontSize: 12,
                                height: 1.5,
                                color: AppColors.neutral800,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row reaction(IconData? icon, String? count, Color? color) {
    return Row(
      children: [
        Icon(icon, size: 24, color: color),
        4.kwidthbox,
        Text(
          count ?? '',
          style: AppTextStyles.openSans(
            fontSize: 14,
            height: 1.5,
            fontWeight: FontWeight.w400,
            color: AppColors.neutral600,
          ),
        ),
      ],
    );
  }

  Container productSample(bool isActive) {
    return Container(
      width: 52,
      height: 58,
      decoration: BoxDecoration(
        color: isActive ? AppColors.red100 : AppColors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: isActive ? AppColors.red : AppColors.neutral200,
          width: 1,
        ),
      ),
      child: Image.asset(
        'images/cloth.png',
        width: 52,
        height: 42,
        fit: BoxFit.contain,
      ),
    );
  }

  Container sizeContainer(bool isActive, String size) {
    return Container(
      width: 52,
      height: 48,
      decoration: BoxDecoration(
        color: isActive ? AppColors.red100 : AppColors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: isActive ? AppColors.red : AppColors.neutral200,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: AppTextStyles.openSans(
            fontSize: 24,
            height: 1.4,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
