import 'package:flutter/material.dart';
import 'package:hovastore/theme/theme.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController InputQuantity = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      color: greyBackgroundColor,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: greyColor,
                      width: 0.5,
                    ),
                    top: BorderSide(
                      color: greyColor,
                      width: 0.5,
                    ),
                    left: BorderSide(
                      color: greyColor,
                      width: 0.5,
                    ),
                    right: BorderSide(
                      color: greyColor,
                      width: 0.5,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: greyColor,
                        size: 22,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 10,
                            left: 10,
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '50',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '50',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 340,
                child: ListTile(
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide.none,
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                        right: 15,
                        bottom: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: highColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    30,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '111',
                                    style: TextStyle(
                                      color: highColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                'Laptop Charger',
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Text(
                                  '...',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  subtitle: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        top: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        left: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                        right: BorderSide(
                          color: greyColor,
                          width: 0.5,
                        ),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 15,
                        right: 15,
                        bottom: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'RWF ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _showAlertDialog(
                                context,
                                'Laptop Charger',
                                '111',
                                '1000',
                                1,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'ADD TO CARD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(
    BuildContext context,
    productName,
    quantity,
    price,
    id,
  ) {
    int parsedQuantity = int.tryParse(quantity) ?? 0;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Add $productName to card',
            style: TextStyle(
              color: primaryColor,
              fontSize: 16,
            ),
          ),
          content: Form(
            key: formkey,
            child: TextFormField(
              controller: InputQuantity,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Quantity is required';
                }
                final numericValue = int.tryParse(val);
                if (numericValue == null) {
                  return 'Please enter a valid number';
                }
                if (numericValue >= parsedQuantity) {
                  return 'Quantity must be less than $quantity';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter product Quantity',
                contentPadding: const EdgeInsets.all(8.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  InputQuantity.text = '';
                });
              },
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  // setState(() {
                  //   productNames = productName;
                  //   productQuantity =
                  //       (parsedQuantity - quantity.text) as String;
                  //   productPrice = price;
                  //   productId = id;
                  // });
                  // updateProductDetails();
                  // addProductToCard();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
