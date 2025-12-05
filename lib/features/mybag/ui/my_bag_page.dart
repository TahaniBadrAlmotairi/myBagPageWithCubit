import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybag/features/mybag/ui/widgets/tshirt_box.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class MyBagPage extends StatelessWidget {
  final int count;

  const MyBagPage({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Scaffold(
        body: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            final cubit = context.read<CounterCubit>();
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.search),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "My Bag",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TShirtItem(
                    name: "Pullover",
                    color: "Black",
                    size: "L",
                    image: "assets/images/1.jpg",
                    price: 51,
                  ),
                  const SizedBox(height: 30),
                  TShirtItem(
                    name: "T-Shirt",
                    color: "Gray",
                    size: "L",
                    image: "assets/images/2.jpg",
                    price: 30,
                  ),
                  const SizedBox(height: 30),
                  TShirtItem(
                    name: "Sport Dress",
                    color: "Black",
                    size: "M",
                    image: "assets/images/3.jpg",
                    price: 43,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // ظل رمادي
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(0, 3), // موقع الظل
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Enter your promo code",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total amount:",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const Text(
                        "124\$",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Text(
                      "CHECK OUT",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
