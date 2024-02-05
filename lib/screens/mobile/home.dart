import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hovastore/constants.dart';
import 'package:hovastore/screens/mobile/confirm_transaction.dart';
import 'package:hovastore/theme/theme.dart';
import 'package:http/http.dart' as http;

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int _currentIndex = 0;
  bool _loading = true;
  List<Map<String, dynamic>> _allProducts = [];
  List<Map<String, dynamic>> _allCardsProducts = [];
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController inputQuantity = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse(productsURL), headers: {'Accept': 'application/json'});

    if (response.statusCode == 200) {
      final decodedResponse = json.decode(response.body);
      final List<Map<String, dynamic>> allProducts =
          List<Map<String, dynamic>>.from(decodedResponse);

      setState(() {
        _allProducts = allProducts;
        _loading = false;
      });
    } else {
      // print('Request failed with status: ${response.statusCode}.');
    }
    final responseCard = await http
        .get(Uri.parse(cardURL), headers: {'Accept': 'application/json'});

    if (responseCard.statusCode == 200) {
      final decodedResponse = json.decode(responseCard.body);
      final List<Map<String, dynamic>> allCardsProducts =
          List<Map<String, dynamic>>.from(decodedResponse);

      setState(() {
        _allCardsProducts = allCardsProducts;
        _loading = false;
      });
    } else {
      // print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.keyboard_backspace_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  const Text(
                    'NEW TRANSACTION',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ConfirmTransaction();
                        }),
                      );
                    },
                    child: Stack(children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 6,
                        top: 6,
                        child: Container(
                          width: 9,
                          height: 9,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 1.3, left: 2),
                            child: Text(
                              _allCardsProducts.length.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 7,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: primaryColor,
        body: _loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greyBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
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
                              const Icon(
                                Icons.qr_code_scanner_rounded,
                                size: 22,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: ListView.builder(
                          itemCount: _allProducts.length,
                          padding: const EdgeInsets.all(0.0),
                          itemBuilder: (context, index) => Column(
                            children: [
                              ListTile(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: _allProducts[index]
                                                              ['amount'] ==
                                                          0
                                                      ? lowColor
                                                      : _allProducts[index]
                                                                  ['amount'] <=
                                                              4
                                                          ? mediumColor
                                                          : highColor,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  30,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  _allProducts[index]['amount']
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: _allProducts[index]
                                                                ['amount'] ==
                                                            0
                                                        ? lowColor
                                                        : (_allProducts[index][
                                                                    'amount'] <=
                                                                4
                                                            ? mediumColor
                                                            : highColor),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              _allProducts[index]['name']
                                                  .toString(),
                                              textAlign: TextAlign.justify,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'RWF ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              _allProducts[index]['price']
                                                  .toString(),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        (_allProducts[index]['status'] ==
                                                'available')
                                            ? GestureDetector(
                                                onTap: () {
                                                  _showAlertDialog(
                                                    context,
                                                    _allProducts[index]['name'],
                                                    _allProducts[index]
                                                        ['amount'],
                                                    _allProducts[index]
                                                        ['price'],
                                                    _allProducts[index]['id'],
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text(
                                                      'ADD TO CARD',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : (_allProducts[index]['status'] ==
                                                    'added')
                                                ? const Text(
                                                    'Already added',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.blue,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  )
                                                : const Text(
                                                    'Out of stock',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.red,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
        bottomNavigationBar: NavigationBar(
          height: 70,
          backgroundColor: Colors.white,
          destinations: [
            _buildNavigationDestination(
              icon: Icons.home_work_outlined,
              label: 'Home',
              index: 0,
            ),
            _buildNavigationDestination(
              icon: Icons.library_books_rounded,
              label: 'Transactions',
              index: 1,
            ),
            _buildNavigationDestination(
              icon: Icons.list_alt,
              label: 'Inventory',
              index: 2,
            ),
            _buildNavigationDestination(
              icon: Icons.co_present_outlined,
              label: 'Profile',
              index: 3,
            ),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedIndex: _currentIndex,
        ),
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
              controller: inputQuantity,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Quantity is required';
                }
                final numericValue = int.tryParse(val);
                if (numericValue == null) {
                  return 'Please enter a valid number';
                }
                if (numericValue >= quantity) {
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
                  inputQuantity.text = '';
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
                  Navigator.of(context).pop();
                  setState(() {
                    inputQuantity.text = '';
                  });
                }
              },
            ),
          ],
        );
      },
    );
  }

  NavigationDestination _buildNavigationDestination({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return NavigationDestination(
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: _currentIndex == index ? primaryColor.withOpacity(0.2) : null,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          icon,
          color: _currentIndex == index ? primaryColor : greyColor,
        ),
      ),
      label: label,
    );
  }
}
