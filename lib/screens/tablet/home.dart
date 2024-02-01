import 'package:flutter/material.dart';
import 'package:hovastore/screens/tablet/confirm_transaction.dart';
import 'package:hovastore/screens/tablet/listing.dart';
import 'package:hovastore/theme/theme.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  int _desktopSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: secondaryColor,
          width: MediaQuery.of(context).size.width / 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Text(
                        'HOVASTORE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _desktopSelected = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (_desktopSelected == 0)
                            ? blackColor
                            : Colors.transparent,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            width: 1,
                            color: greyColor,
                          ),
                        ),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.home_work_outlined,
                              color: (_desktopSelected == 0)
                                  ? Colors.white
                                  : greyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'HOME',
                              style: TextStyle(
                                color: (_desktopSelected == 0)
                                    ? Colors.white
                                    : greyColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _desktopSelected = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (_desktopSelected == 1)
                            ? blackColor
                            : Colors.transparent,
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: (_desktopSelected == 1)
                                  ? Colors.white
                                  : greyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SELL',
                              style: TextStyle(
                                color: (_desktopSelected == 1)
                                    ? Colors.white
                                    : greyColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _desktopSelected = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (_desktopSelected == 2)
                            ? blackColor
                            : Colors.transparent,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            width: 1,
                            color: greyColor,
                          ),
                        ),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.home_work_outlined,
                              color: (_desktopSelected == 2)
                                  ? Colors.white
                                  : greyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'TRANSACTIONS',
                              style: TextStyle(
                                color: (_desktopSelected == 2)
                                    ? Colors.white
                                    : greyColor,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _desktopSelected = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (_desktopSelected == 3)
                            ? blackColor
                            : Colors.transparent,
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.home_work_outlined,
                              color: (_desktopSelected == 3)
                                  ? Colors.white
                                  : greyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'EXPENSES',
                              style: TextStyle(
                                color: (_desktopSelected == 3)
                                    ? Colors.white
                                    : greyColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _desktopSelected = 4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (_desktopSelected == 4)
                            ? blackColor
                            : Colors.transparent,
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            width: 1,
                            color: greyColor,
                          ),
                        ),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.home_work_outlined,
                              color: (_desktopSelected == 4)
                                  ? Colors.white
                                  : greyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SETTINGS',
                              style: TextStyle(
                                color: (_desktopSelected == 4)
                                    ? Colors.white
                                    : greyColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.transparent,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Powered by',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'HOVA AI',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.112,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 57,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.home,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'HOVA STORE LTD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_2_outlined,
                                color: primaryColor,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Xavier N.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: primaryColor.withOpacity(0.2),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2.0,
                                horizontal: 10,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color: primaryColor,
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Logout',
                                    style: TextStyle(
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Listing(),
                  ConfirmTransaction(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
