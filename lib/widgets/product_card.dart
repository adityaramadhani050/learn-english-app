import 'package:flutter/material.dart';
import 'package:learn_english_app/constant.dart';
import 'package:learn_english_app/models/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 15, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: widget.product.color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Icon(widget.product.icon, color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('${widget.product.duration} Minutes')
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.product.isFav = !widget.product.isFav;
              });
            },
            child: Icon(
              (widget.product.isFav) ? Icons.favorite : Icons.favorite,
              color: (widget.product.isFav) ? black : black.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
