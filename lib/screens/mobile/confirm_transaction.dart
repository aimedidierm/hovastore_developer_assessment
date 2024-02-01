import 'package:flutter/material.dart';
import 'package:hovastore/theme/theme.dart';

class ConfirmTransaction extends StatefulWidget {
  const ConfirmTransaction({super.key});

  @override
  State<ConfirmTransaction> createState() => _ConfirmTransactionState();
}

class _ConfirmTransactionState extends State<ConfirmTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 23,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.keyboard_backspace_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const Text(
                  'CONFIRM TRANSACTION',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 14,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: primaryColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: greyBackgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please review the selected products and the total amount to confirm the transaction...',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Text(
                    'CLEAR',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.07),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Amata y'inyange 1L",
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                "QTY 1 x 1000",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: greyColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: primaryColor,
                              ),
                              Text(
                                "RWF 1000",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        color: Colors.white,
                        height: 1,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Juice",
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                "QTY 1 x 1000",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: greyColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: primaryColor,
                              ),
                              Text(
                                "RWF 1000",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        color: Colors.white,
                        height: 1,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sub-total",
                                style: TextStyle(fontSize: 11),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Tax",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: greyColor,
                                    ),
                                  ),
                                  Text(
                                    " (18%)",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "RWF 2000",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "RWF 360",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 34,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'RWF 2000',
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: blackColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: blackColor,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'CUSTOMER',
                            style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: blackColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: blackColor,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            'PAYMENT METHOD',
                            style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 42,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: primaryColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.check,
                          color: primaryColor,
                          size: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Confirm Transaction',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
