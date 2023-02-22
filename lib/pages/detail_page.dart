import 'package:flutter/material.dart';
import 'package:starbucks_app_ui/const.dart';
import 'package:starbucks_app_ui/models/product_model.dart';
import 'package:starbucks_app_ui/models/size_options_model.dart';
import 'package:starbucks_app_ui/widgets/background.dart';
import 'package:starbucks_app_ui/widgets/product_image.dart';
import 'package:starbucks_app_ui/widgets/size_option_item.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedSize = 0;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
        title: const Text(
          'Details',
          style: TextStyle(color: black),
        ),
        centerTitle: true,
        actions: [
          Center(
            child: Stack(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  color: brown,
                ),
                Positioned(
                  right: 5,
                  top: 0,
                  child: Container(
                    width: 7.5,
                    height: 7.5,
                    decoration: const BoxDecoration(
                        color: green, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: Stack(children: [
        const Background(),
        Positioned(
          left: 20,
          right: 20,
          child: Column(
            children: [
              Hero(
                tag: widget.product.name,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.49,
                  child: ProductImage(product: widget.product),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Text(
                      widget.product.name,
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                      style: const TextStyle(
                          color: black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${widget.product.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            color: green,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Best Sales',
                        style: TextStyle(
                            color: black.withOpacity(0.5), fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Size Options',
                    style: TextStyle(
                        color: black.withOpacity(0.5),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(sizeOptions.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSize = index;
                            });
                          },
                          child: SizeOptionItem(
                            index: index,
                            selected: selectedSize == index ? true : false,
                            sizeOption: sizeOptions[index],
                          ),
                        );
                      })
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity > 1) {
                              quantity--;
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: green,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: green,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                          'Add to Order',
                          style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ))),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
